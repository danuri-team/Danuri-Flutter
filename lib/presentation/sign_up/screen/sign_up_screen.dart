import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/provider/flow_provider.dart';
import 'package:danuri_flutter/core/provider/phone_number_provider.dart';
import 'package:danuri_flutter/core/provider/sign_up_schema_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/util/form_schema_to_json.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/data/models/enum/flow_type.dart';
import 'package:danuri_flutter/data/view_models/form_view_model.dart';
import 'package:danuri_flutter/data/view_models/user_auth_view_model.dart';
import 'package:danuri_flutter/presentation/sign_up/widgets/sign_up_form.dart';
import 'package:danuri_flutter/presentation/widgets/button/next_button.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final userViewModelProvider =
    ChangeNotifierProvider((_) => UserAuthViewModel());
final formViewModelProvider = Provider((_) => FormViewModel());

final responseSignUpFormProvider = FutureProvider(
  (ref) async {
    final formViewModel = ref.watch(formViewModelProvider);
    await formViewModel.getForm();
    final schema = FormSchemaToJson().schemaToJson(formViewModel.form!.schema);
    ref
        .read(requestSignUpFormProvider.notifier)
        .addField(key: 'id', value: schema[0]['id']);
    return formViewModel.form;
  },
);

final signUpAndLoginProvider = FutureProvider(
  (ref) async {
    final userViewModel = ref.watch(userViewModelProvider);
    final String phone = ref.read(phoneNumberProvider.notifier).state!;
    await userViewModel.signUpAndLogin(phone: phone);
  },
);

class SignUpScreen extends ConsumerWidget {
  SignUpScreen({super.key});

  bool isAllRequiredSelected(WidgetRef ref) {
    final requestForm = ref.watch(requestSignUpFormProvider);
    final formAsync = ref.watch(responseSignUpFormProvider);

    return formAsync.when(
      data: (form) {
        final schema = FormSchemaToJson().schemaToJson(form!.schema);
        final requiredFields =
            schema.where((item) => item['isRequired'] == true);

        return requiredFields.every((item) {
          final key = item['label'];
          return requestForm.containsKey(key) && requestForm[key] != null;
        });
      },
      error: (_, __) => false,
      loading: () => false,
    );
  }

  void submit(WidgetRef ref, BuildContext context) {
    ref.read(signUpAndLoginProvider);
    final userViewModel = ref.read(userViewModelProvider.notifier);

    if (userViewModel.error == true) {
      AppNavigation.pushFailure(context);
    } else {
      AppNavigation.pushAuthCodeLogin(context);
      ref.read(flowProvider.notifier).update((state) => FlowType.SIGN_UP);
      userViewModel.reset();
    }

    signUpKey.currentState?.resetForm();
  }

  final GlobalKey<SignUpFormState> signUpKey = GlobalKey<SignUpFormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formAsync = ref.watch(responseSignUpFormProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(60.w, 85.h, 61.w, 78.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTopBar(
                title: '처음 이용하면 정보 기입이 필요해요',
                subTitle: '간단하게 입력해볼까요?',
                needCallBackButton: true,
                rightWidget: SizedBox.shrink(),
                callBackButtonOnTap: () =>
                    signUpKey.currentState?.resetForm(),
              ),
              SizedBox(height: 44.h),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: formAsync.when(
                  data: (data) {
                    final schema =
                        FormSchemaToJson().schemaToJson(data!.schema);
                    return SignUpForm(key: signUpKey, schema: schema);
                  },
                  error: (error, stackTrace) => Text(error.toString()),
                  loading: () =>
                      CircularProgressIndicator(color: DanuriColor.static2),
                ),
              ),
              SizedBox(height: 56.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NextButton(
                    centerText: '완료',
                    onTap: () {
                      if (isAllRequiredSelected(ref)) {
                        Throttle.run(() => submit(ref, context));
                      }
                    },
                    isActivate: isAllRequiredSelected(ref),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
