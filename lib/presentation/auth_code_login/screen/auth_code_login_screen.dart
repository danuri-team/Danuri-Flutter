import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/provider/flows/exit_room_flow_provider.dart';
import 'package:danuri_flutter/core/provider/flows/item_rental_flow_provider.dart';
import 'package:danuri_flutter/core/provider/phone_number_provider.dart';
import 'package:danuri_flutter/core/provider/flows/register_used_space_flow_provider.dart';
import 'package:danuri_flutter/core/provider/rental_id_provider.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/data/view_models/auth_code_view_model.dart';
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

  final AuthCodeViewModel _viewModel = AuthCodeViewModel();

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
    await _viewModel.authCodeLogin(
      context.read<PhoneNumberProvider>().phoneNumber,
      _authCodeController.text,
    );
  }

  Future<void> exitRoom() async {
    final List<String> rentalIds = context.read<RentalIdProvider>().rentalIds;
    for (var rentalId in rentalIds) {
      await _viewModel.returnItem(rentalId);
    }
    await _viewModel.exitRoom().then(
      (_) {
        if (_viewModel.error == true) {
          _viewModel.reset();
          context.push('/failure');
        } else {
          context.read<ExitRoomFlowProvider>().resetFlow();
          context.push('/completion');
        }
      },
    );
  }

  Future<void> registerUsedSpace() async {
    await _viewModel.registerUsedSpace(context).then(
      (_) {
        if (_viewModel.error == true) {
          _viewModel.reset();
          context.push('/failure');
        } else {
          context.read<RegisterUsedSpaceFlowProvider>().resetFlow();
          context.push('/completion');
        }
      },
    );
  }

  Future<void> itemRental() async {
    await _viewModel.itemRental(context).then(
      (_) {
        if (_viewModel.error == true) {
          _viewModel.reset();
          context.push('/failure');
        } else {
          context.read<ItemRentalFlowProvider>().resetFlow();
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
                            if (_viewModel.error == true) {
                              context.push('/failure');
                              _viewModel.reset();
                            } else {
                              final bool exitRoomFlow = context
                                  .read<ExitRoomFlowProvider>()
                                  .exitRoomFlow;
                              final bool registerUsedSpaceFlow = context
                                  .read<RegisterUsedSpaceFlowProvider>()
                                  .registerUsedSpaceFlow;
                              final bool itemRentalFlow = context
                                  .read<ItemRentalFlowProvider>()
                                  .itemRentalFlow;

                              if (exitRoomFlow == true)
                                await exitRoom();
                              else if (registerUsedSpaceFlow == true)
                                await registerUsedSpace();
                              else if (itemRentalFlow == true)
                                await itemRental();
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
