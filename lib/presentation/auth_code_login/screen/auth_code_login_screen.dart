import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/provider/flows/leaving_space_flow_provider.dart';
import 'package:danuri_flutter/core/provider/flows/item_rental_flow_provider.dart';
import 'package:danuri_flutter/core/provider/phone_number_provider.dart';
import 'package:danuri_flutter/core/provider/flows/register_used_space_flow_provider.dart';
import 'package:danuri_flutter/core/provider/rental_id_provider.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/data/view_models/item_rental_view_model.dart';
import 'package:danuri_flutter/data/view_models/register_used_space_view_model.dart';
import 'package:danuri_flutter/data/view_models/user_auth_view_model.dart';
import 'package:danuri_flutter/presentation/widgets/button/help_me_button.dart';
import 'package:danuri_flutter/presentation/widgets/button/next_button.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
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

  final UserAuthViewModel _userAuthViewModel = UserAuthViewModel();
  final RegisterUsedSpaceViewModel _spaceViewModel =
      RegisterUsedSpaceViewModel();
  final ItemRentalViewModel _itemViewModel = ItemRentalViewModel();

  @override
  void initState() {
    super.initState();
    _authCodeController.addListener(
      () => setState(() {}),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _authCodeController.dispose();
  }

  Future<void> _authCodeLogin() async {
    await _userAuthViewModel.authCodeLogin(
      context.read<PhoneNumberProvider>().phoneNumber,
      _authCodeController.text,
    );
  }

  Future<void> itemRental() async {
    await _itemViewModel.itemRental(context, 1, '').then(
      (_) {
        if (!mounted) {
          return;
        }

        if (_itemViewModel.error == true) {
          _itemViewModel.reset();
          context.push('/failure');
        } else {
          context.read<ItemRentalFlowProvider>().resetFlow();
          context.push('/completion');
        }
      },
    );
  }

  Future<void> leavingSpace() async {
    final List<String> rentalIds = context.read<RentalIdProvider>().rentalIds;
    for (var rentalId in rentalIds) {
      await _itemViewModel.returnItem(rentalId);
    }
    await _spaceViewModel.leavingSpace('').then(
      (_) {
        if (!mounted) {
          return;
        }

        if (_spaceViewModel.error == true) {
          _spaceViewModel.reset();
          context.push('/failure');
        } else {
          context.read<LeavingSpaceFlowProvider>().resetFlow();
          context.push('/completion');
        }
      },
    );
  }

  Future<void> registerUsedSpace() async {
    await _spaceViewModel.registerUsedSpace(context).then(
      (_) {
        if (!mounted) {
          return;
        }
        if (_spaceViewModel.error == true) {
          _spaceViewModel.reset();
          context.push('/failure');
        } else {
          context.read<RegisterUsedSpaceFlowProvider>().resetFlow();
          context.push('/completion');
        }
      },
    );
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
                rightWidget: HelpMeButton(),
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
                              context.push('/failure');
                              _userAuthViewModel.reset();
                            } else {
                              final bool leavingSpaceFlow = context
                                  .read<LeavingSpaceFlowProvider>()
                                  .leavingSpaceFlow;
                              final bool registerUsedSpaceFlow = context
                                  .read<RegisterUsedSpaceFlowProvider>()
                                  .registerUsedSpaceFlow;
                              final bool itemRentalFlow = context
                                  .read<ItemRentalFlowProvider>()
                                  .itemRentalFlow;

                              if (leavingSpaceFlow == true) {
                                await leavingSpace();
                              } else if (registerUsedSpaceFlow == true) {
                                await registerUsedSpace();
                              } else if (itemRentalFlow == true) {
                                await itemRental();
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
