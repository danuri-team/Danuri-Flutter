import 'package:danuri_flutter/core/provider/flow_provider.dart';
import 'package:danuri_flutter/core/provider/phone_number_provider.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/data/view_models/user_auth_view_model.dart';
import 'package:danuri_flutter/presentation/login/widgets/phone_text_field.dart';
import 'package:danuri_flutter/presentation/widgets/button/help_me_button.dart';
import 'package:danuri_flutter/presentation/widgets/button/next_button.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final UserAuthViewModel _viewModel = UserAuthViewModel();

  @override
  Widget build(BuildContext context) {
    final phone = ref.watch(phoneNumberProvider);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(60.w, 85.h, 61.w, 58.h),
          child: Column(
            children: [
              CustomTopBar(
                callBackButtonOnTap: () {
                  ref.read(flowProvider.notifier).update(
                        (state) => null,
                      );
                },
                title: '번호를 입력해주세요',
                subTitle: '인증을 통해 공간을 이용할 수 있어요',
                needCallBackButton: true,
                rightWidget: const HelpMeButton(),
              ),
              SizedBox(height: 131.h),
              PhoneTextField(),
              SizedBox(height: 214.h),
              NextButton(
                centerText: '다음',
                onTap: () {
                  if (phone?.length == 13) {
                    Throttle.run(
                      () async {
                        await _viewModel.userLogin(phone: phone!).then(
                          (_) {
                            if (_viewModel.error == true) {
                              if (context.mounted) {
                                context.push('/sign-up');
                              }
                            } else {
                              if (context.mounted) {
                                context.push('/auth-code-login');
                              }
                            }
                          },
                        );
                      },
                    );
                  }
                },
                isActivate: phone?.length == 13,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
