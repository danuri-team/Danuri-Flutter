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
import 'package:danuri_flutter/presentation/widgets/selection_box.dart';
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
  void dispose() {
    super.dispose();
    _userNameController.dispose();
  }

  Future<void> _signUp() async {
    final phoneNumber = ref.read(phoneNumberProvider.notifier).state;
    await _viewModel.signUp(
      companyId: '52515fd2-43e5-440b-9cc5-8630bc75954e',
      userName: _userNameController.text,
      phoneNumber: phoneNumber!,
      sex: userInfo['sex'] as SexType,
      age: userInfo['grade'] as AgeType,
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
              const CustomTopBar(
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
                        onChanged: (value) => setState(() {}),
                        decoration: InputDecoration(
                          hintText: '이름을 입력해주세요.',
                          hintStyle: DanuriText.body1Normal
                              .copyWith(color: DanuriColor.label2),
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
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: exampleOptions['sex']!.length,
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 12.w),
                        itemBuilder: (context, index) {
                          return SelectionBox(
                            isSelected:
                                userInfo['sex'] == options['sex']![index],
                            name: exampleOptions['sex']![index],
                            onTap: () {
                              setState(
                                () {
                                  userInfo['sex'] = options['sex']![index];
                                },
                              );
                            },
                            available: true,
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
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: options['grade']!.length,
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 12.w),
                        itemBuilder: (context, index) {
                          return SelectionBox(
                            isSelected:
                                userInfo['grade'] == options['grade']![index],
                            name: exampleOptions['grade']![index],
                            onTap: () {
                              setState(
                                () {
                                  userInfo['grade'] = options['grade']![index];
                                },
                              );
                            },
                            available: true,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 56.h),
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
                              final phoneNumber =
                                  ref.read(phoneNumberProvider.notifier).state;
                              await _viewModel.userLogin(
                                  phoneNumber: phoneNumber!);
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
        ),
      ),
    );
  }
}
