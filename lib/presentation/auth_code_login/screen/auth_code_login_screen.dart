import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/provider/flow_provider.dart';
import 'package:danuri_flutter/core/provider/sign_up_schema_provider.dart';
import 'package:danuri_flutter/core/provider/space_rental_provider.dart';
import 'package:danuri_flutter/core/provider/time_slot_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/provider/phone_number_provider.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/data/models/enum/flow_type.dart';
import 'package:danuri_flutter/data/view_models/form_view_model.dart';
import 'package:danuri_flutter/data/view_models/space_view_model.dart';
import 'package:danuri_flutter/data/view_models/user_auth_view_model.dart';
import 'package:danuri_flutter/presentation/widgets/button/next_button.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthCodeLoginScreen extends ConsumerStatefulWidget {
  const AuthCodeLoginScreen({super.key});

  @override
  ConsumerState<AuthCodeLoginScreen> createState() =>
      _AuthCodeLoginScreenState();
}

class _AuthCodeLoginScreenState extends ConsumerState<AuthCodeLoginScreen> {
  final TextEditingController _authCodeController = TextEditingController();

  final UserAuthViewModel _userAuthViewModel = UserAuthViewModel();
  final SpaceViewModel _spaceViewModel = SpaceViewModel();
  final FormViewModel _formViewModel = FormViewModel();


  @override
  void dispose() {
    super.dispose();
    _authCodeController.dispose();
  }

  Future<void> _authCodeLogin() async {
    final phone = ref.read(phoneNumberProvider.notifier).state;

    await _userAuthViewModel.authCodeLogin(
      phone: phone!,
      authCode: _authCodeController.text,
    );
  }

  Future<void> _spaceRental() async {
    final spaceId = ref.read(spaceIdProvider.notifier).state;
    final startAt = ref.read(startAtProvider.notifier).state;
    await _spaceViewModel
        .spaceRental(context: context, spaceId: spaceId!, startAt: startAt!)
        .then(
      (_) {
        if (!mounted) {
          return;
        }
        if (_spaceViewModel.error == true) {
          _spaceViewModel.reset();
          AppNavigation.pushFailure(context);
        } else {
          AppNavigation.pushCompletion(context);
        }
      },
    );
    ref.read(spaceIdProvider.notifier).update((state) => null);
    ref.read(startAtProvider.notifier).update((state) => null);
    ref.read(timeSlotProvider.notifier).reset();
  }

  Future<void> _inputForm() async {
    final schema = ref.watch(signUpSchemaProvider);
    await _formViewModel.inputForm(
      schema: schema.toString(),
    );
    ref.read(signUpSchemaProvider.notifier).resetSchema();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(60.w, 85.h, 61.w, 58.h),
          child: Column(
            children: [
              const CustomTopBar(
                title: '입력하신 번호로 인증번호를 보냈어요 ',
                subTitle: '숫자로 구성된 6자리 번호를 입력해주세요',
                needCallBackButton: true,
                rightWidget: SizedBox.shrink(),
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
                  onChanged: (value) {
                    if (value.length == 6 || value.length == 5) {
                      setState(() {});
                    }
                  },
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
                      borderSide: const BorderSide(
                        width: 1,
                        color: DanuriColor.line2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
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
                  if (_authCodeController.text.length == 6) {
                    Throttle.run(
                      () {
                        _authCodeLogin().then(
                          (_) async {
                            if (!context.mounted) {
                              return;
                            }

                            if (_userAuthViewModel.error == true) {
                              AppNavigation.pushFailure(context);
                              _userAuthViewModel.reset();
                            } else {
                              final flow =
                                  ref.read(flowProvider.notifier).state;
                              if (flow != null) {
                                switch (flow) {
                                  case FlowType.SPACE_RENTAL:
                                    await _spaceRental();
                                    break;
                                  case FlowType.SIGN_UP:
                                      await _inputForm();
                                      await _spaceRental();
                                }
                                ref
                                    .read(phoneNumberProvider.notifier)
                                    .update((state) => null);
                                ref.read(flowProvider.notifier).update(
                                      (state) => null,
                                    );
                              }
                            }
                          },
                        );
                      },
                    );
                  }
                },
                isActivate: _authCodeController.text.length == 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
