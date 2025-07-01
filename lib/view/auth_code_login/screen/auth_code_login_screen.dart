import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:danuri_flutter/core/provider/exit_room_flow_provider.dart';
import 'package:danuri_flutter/core/provider/phone_number_provider.dart';
import 'package:danuri_flutter/data/view_models/auth_code_view_model.dart';
import 'package:danuri_flutter/view/components/button/next_button.dart';
import 'package:danuri_flutter/view/components/custom_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class AuthCodeLoginScreen extends StatefulWidget {
  const AuthCodeLoginScreen({super.key});

  @override
  State<AuthCodeLoginScreen> createState() => _AuthCodeLoginScreenState();
}

class _AuthCodeLoginScreenState extends State<AuthCodeLoginScreen> {
  final TextEditingController _authCodeController = TextEditingController();

  final AuthCodeViewModel _viewModel = AuthCodeViewModel();

  @override
  void dispose() {
    super.dispose();
    _authCodeController.dispose();
  }

  Future<void> _authCodeLogin() async {
    await _viewModel.authCodeLogin(
      context.read<PhoneNumberProvider>().phoneNumber,
      _authCodeController.text,
    );
  }

  void _authFailed() {
    context.push('/failure');
  }

  Future<void> _authCompleted() async {
    final bool exitRoomFlow = context.read<ExitRoomFlowProvider>().exitRoomFlow;
    if (exitRoomFlow == true) {
      await _viewModel.exitRoom().then(
        (_) {
          if (_viewModel.error == true) {
            _viewModel.error == false;
            context.push('/failure');
          } else {
            context.push('/completion');
          }
        },
      );
    }
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
                title: '입력하신 번호로 인증번호를 보냈어요 ',
                subTitle: '숫자로 구성된 6자리 번호를 입력해주세요',
                needCallBackButton: true,
                needHelpMeButton: true,
              ),
              SizedBox(height: 131.h),
              SizedBox(
                width: 500.w,
                height: 64.h,
                child: TextFormField(
                  controller: _authCodeController,
                  maxLength: 6,
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    counterText: '',
                    hintText: '000000',
                    hintStyle: DanuriText.headLine1.copyWith(
                      color: DanuriColor.label6,
                      fontWeight: FontWeight.w400,
                    ),
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
                onTap: () async {
                  _authCodeLogin().then(
                    (_) async {
                      if (_viewModel.error == true) {
                        _authFailed();
                        _viewModel.error == false;
                      } else {
                        _authCompleted();
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
