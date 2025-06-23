import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/provider/phone_number_provider.dart';
import 'package:danuri_flutter/data/view_models/login_view_model.dart';
import 'package:danuri_flutter/view/components/button/next_button.dart';
import 'package:danuri_flutter/view/components/custom_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();

  final LoginViewModel _viewModel = LoginViewModel();

  @override
  void dispose() {
    super.dispose();
    _phoneNumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PhoneNumberProvider>(
      create: (context) => PhoneNumberProvider(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(60.w, 85.h, 61.w, 58.h),
            child: Column(
              children: [
                CustomTopBar(
                  title: '번호를 입력해주세요',
                  subTitle: '인증을 통해 공간을 이용할 수 있어요',
                  needCallBackButton: true,
                  needHelpMeButton: true,
                ),
                SizedBox(height: 131.h),
                SizedBox(
                  width: 500.w,
                  height: 64.h,
                  child: TextFormField(
                    controller: _phoneNumberController,
                    maxLength: 11,
                    keyboardType: TextInputType.phone,
                    onTapOutside: (event) =>
                        FocusManager.instance.primaryFocus?.unfocus(),
                    decoration: InputDecoration(
                      hintText: '010-0000-0000',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 1,
                          color: DanuriColor.line2,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 220.h),
                NextButton(
                  centerText: '다음',
                  onTap: () async {
                    final String phoneNumber =
                        "${_phoneNumberController.text.substring(0, 3)}-${_phoneNumberController.text.substring(3, 7)}-${_phoneNumberController.text.substring(7, 11)}";
                    context
                        .read<PhoneNumberProvider>()
                        .setPhoneNumber(phoneNumber);
                    await _viewModel
                        .userLogin(
                            "${phoneNumber.substring(0, 3)}-${phoneNumber.substring(3, 7)}-${phoneNumber.substring(7, 11)}")
                        .then((_) {
                      if (_viewModel.userInfo!.isSuccess == true) {
                        context.go('/home');
                      } else {
                        context.go('/sign-up');
                      }
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
