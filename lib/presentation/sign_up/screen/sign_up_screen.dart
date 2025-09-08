import 'package:danuri_flutter/core/provider/phone_number_provider.dart';
import 'package:danuri_flutter/core/provider/sign_up_schema_provider.dart';
import 'package:danuri_flutter/core/util/form_schema_to_json.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/data/models/other/form/request/form_request.dart';
import 'package:danuri_flutter/data/models/other/form/response/form_response.dart';
import 'package:danuri_flutter/data/view_models/form_view_model.dart';
import 'package:danuri_flutter/data/view_models/user_auth_view_model.dart';
import 'package:danuri_flutter/presentation/sign_up/widgets/sign_up_form.dart';
import 'package:danuri_flutter/presentation/widgets/button/help_me_button.dart';
import 'package:danuri_flutter/presentation/widgets/button/next_button.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final UserAuthViewModel _userViewModel = UserAuthViewModel();

  final FormViewModel _formViewModel = FormViewModel();
  FormResponse? form;
  List<Map<String, dynamic>>? schema;

  @override
  void initState() {
    super.initState();
    getForm();
    setState(() {});
  }

  Future<void> getForm() async {
    await _formViewModel.getForm();
    setState(() {
      schema = FormSchemaToJson().schemaToJson(_formViewModel.form!.schema);
      form = _formViewModel.form;
    });
  }

  Future<void> signUp({required String phone}) async {
    await _userViewModel.signUp(
      companyId: '52515fd2-43e5-440b-9cc5-8630bc75954e',
      phone: phone,
    );
  }

  Future<void> userLogin({required String phone}) async {
    await _userViewModel.userLogin(phone: phone);
  }

  Future<void> inputForm() async {
    final schema = ref.read(signUpSchemaProvider);
    await _formViewModel.inputForm(FormRequest(schema: schema));
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.read(signUpSchemaProvider);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(60.w, 85.h, 61.w, 78.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomTopBar(
                title: '처음 이용하면 정보 기입이 필요해요',
                subTitle: '간단하게 입력해볼까요?',
                needCallBackButton: true,
                rightWidget: HelpMeButton(),
              ),
              SizedBox(height: 44.h),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: SignUpForm(form: form, schema: schema),
              ),
              SizedBox(height: 56.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NextButton(
                    centerText: '완료',
                    onTap: () {
                      if (schema?.length == state.length) {
                        final String phone =
                            ref.read(phoneNumberProvider.notifier).state!;
                        Throttle.run(
                          () async {
                            await Future.wait([
                              signUp(phone: phone),
                              inputForm(),
                            ]);
                            await userLogin(phone: phone);
                            
                            if (context.mounted) {
                              context.push('/auth-code-login');
                            }
                          },
                        );
                      }
                    },
                    isActivate:
                        schema == null ? false : schema!.length == state.length,
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
