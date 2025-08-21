import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/provider/flow_provider.dart';
import 'package:danuri_flutter/core/provider/phone_number_provider.dart';
import 'package:danuri_flutter/core/util/phone_number_formatter.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/data/view_models/user_auth_view_model.dart';
import 'package:danuri_flutter/presentation/widgets/button/help_me_button.dart';
import 'package:danuri_flutter/presentation/widgets/button/next_button.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();

  final UserAuthViewModel _viewModel = UserAuthViewModel();

  @override
  void initState() {
    super.initState();
    _phoneNumberController.addListener(
      () => setState(() {}),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _phoneNumberController.dispose();
  }

  Future<void> userLogin() async {
    ref.read(phoneNumberProvider.notifier).update((state) => _phoneNumberController.text,);
    await _viewModel.userLogin(phoneNumber: _phoneNumberController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(60.w, 85.h, 61.w, 58.h),
          child: Column(
            children: [
              CustomTopBar(
                callBackButtonOnTap: () {
                  ref.read(flowProvider.notifier).update((state) => null,);
                },
                title: '번호를 입력해주세요',
                subTitle: '인증을 통해 공간을 이용할 수 있어요',
                needCallBackButton: true,
                rightWidget: HelpMeButton(),
              ),
              SizedBox(height: 131.h),
              SizedBox(
                width: 500.w,
                height: 64.h,
                child: TextFormField(
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    PhoneNumberFormatter(),
                  ],
                  controller: _phoneNumberController,
                  maxLength: 13,
                  keyboardType: TextInputType.phone,
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  decoration: InputDecoration(
                    hintText: '010-0000-0000',
                    hintStyle: DanuriText.headLine1.copyWith(
                      color: DanuriColor.label6,
                      fontWeight: FontWeight.w400,
                    ),
                    counterText: '',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        width: 1,
                        color: DanuriColor.line2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        width: 2,
                        color: DanuriColor.primary1,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 220.h),
              NextButton(
                centerText: '다음',
                onTap: () {
                  if (_phoneNumberController.text.length == 13) {
                    Throttle.run(
                      () {
                        userLogin().then(
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
                isActivate: _phoneNumberController.text.length == 13,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
