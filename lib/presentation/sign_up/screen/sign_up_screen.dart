import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/provider/phone_number_provider.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/data/models/enum/age_type.dart';
import 'package:danuri_flutter/data/models/enum/sex_type.dart';
import 'package:danuri_flutter/data/view_models/user_auth_view_model.dart';
import 'package:danuri_flutter/presentation/widgets/button/help_me_button.dart';
import 'package:danuri_flutter/presentation/widgets/button/next_button.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
import 'package:danuri_flutter/presentation/sign_up/widget/rounded_rectangle_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _userNameController = TextEditingController();

  final UserAuthViewModel _viewModel = UserAuthViewModel();

  Map<String, Enum?> userInfo = {'sex': null, 'grade': null};

  final Map<String, List<Enum>> options = {
    'sex': [
      SexType.MALE,
      SexType.FEMALE,
    ],
    'grade': [
      AgeType.ELEMENTARY,
      AgeType.MIDDLE,
      AgeType.HIGH,
      AgeType.OUT_OF_SCHOOL_YOUTH,
      AgeType.ADULT,
    ]
  };

  final Map<String, List<String>> exampleOptions = {
    'sex': [
      '남성',
      '여성',
    ],
    'grade': [
      '초등학교',
      '중학교',
      '고등학교',
      '학교 밖 청소년',
      '일반',
    ]
  };

  @override
  void initState() {
    super.initState();
    _userNameController.addListener(
      () => setState(() {}),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _userNameController.dispose();
  }

  Future<void> _signUp() async {
    await _viewModel.signUp(
      '52515fd2-43e5-440b-9cc5-8630bc75954e',
      _userNameController.text,
      context.read<PhoneNumberProvider>().phoneNumber,
      userInfo['sex'] as SexType,
      userInfo['grade'] as AgeType,
    );
  }

  @override
  Widget build(BuildContext context) {
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
                rightWidget: HelpMeButton(),
              ),
              SizedBox(height: 44.h),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '이름',
                      style: DanuriText.body1Normal.copyWith(
                        color: DanuriColor.label5,
                      ),
                    ),
                    SizedBox(height: 14.h),
                    SizedBox(
                      width: 335.w,
                      height: 48.h,
                      child: TextFormField(
                        controller: _userNameController,
                        onTapOutside: (event) =>
                            FocusManager.instance.primaryFocus?.unfocus(),
                        decoration: InputDecoration(
                          hintText: '이름을 입력해주세요.',
                          hintStyle: DanuriText.body1Normal
                              .copyWith(color: DanuriColor.label2),
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
                    SizedBox(height: 34.h),
                    Text(
                      '성별',
                      style: DanuriText.body1Normal.copyWith(
                        color: DanuriColor.label5,
                      ),
                    ),
                    SizedBox(height: 14.h),
                    SizedBox(
                      width: 180.w,
                      height: 48.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: exampleOptions['sex']!.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              RoundedRectangleBox(
                                width: 84.w,
                                text: exampleOptions['sex']![index],
                                selected:
                                    userInfo['sex'] == options['sex']![index],
                                onTap: () {
                                  setState(
                                    () {
                                      userInfo['sex'] = options['sex']![index];
                                    },
                                  );
                                },
                              ),
                              if (options['sex']!.length != index + 1)
                                SizedBox(width: 12.w),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 34.h),
                    Text(
                      '학년',
                      style: DanuriText.body1Normal.copyWith(
                        color: DanuriColor.label5,
                      ),
                    ),
                    SizedBox(height: 14.h),
                    SizedBox(
                      width: 608.w,
                      height: 48.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: options['grade']!.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              RoundedRectangleBox(
                                width: 112.w,
                                text: exampleOptions['grade']![index],
                                selected: userInfo['grade'] ==
                                    options['grade']![index],
                                onTap: () {
                                  setState(() {
                                    userInfo['grade'] =
                                        options['grade']![index];
                                  });
                                },
                              ),
                              if (options['grade']!.length != index + 1)
                                SizedBox(width: 12.w),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 56.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NextButton(
                    centerText: '완료',
                    onTap: () {
                      if (_userNameController.text.isNotEmpty &&
                          userInfo['sex'] != null &&
                          userInfo['grade'] != null) {
                        Throttle.run(
                          () async {
                            await _signUp().then(
                              (_) async {
                                if (_viewModel.error == false) {
                                  await _viewModel.userLogin(context
                                      .read<PhoneNumberProvider>()
                                      .phoneNumber);
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
                    isActivate: _userNameController.text.isNotEmpty &&
                        userInfo['sex'] != null &&
                        userInfo['grade'] != null,
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
