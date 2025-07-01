import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:danuri_flutter/core/provider/register_used_space_flow_provider.dart';
import 'package:danuri_flutter/core/provider/space_id_provider.dart';
import 'package:danuri_flutter/data/view_models/register_used_space_view_model.dart';
import 'package:danuri_flutter/view/components/button/next_button.dart';
import 'package:danuri_flutter/view/components/custom_top_bar.dart';
import 'package:danuri_flutter/view/components/selection_box.dart';
import 'package:danuri_flutter/view/register_used_space/widgets/show_available_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class RegisterUsedSpace extends StatefulWidget {
  const RegisterUsedSpace({super.key});

  @override
  State<RegisterUsedSpace> createState() => _RegisterUsedSpaceState();
}

class _RegisterUsedSpaceState extends State<RegisterUsedSpace> {
  Map<String, String?> selectedSpace = {'spaceId': null};

  final RegisterUsedSpaceViewModel _viewModel = RegisterUsedSpaceViewModel();

  Future<void> fetchSpaceUsageStatus() async {
    await _viewModel.getSpaceUsageStatus().then(
          (value) => setState(() {}),
        );
  }

  @override
  void initState() {
    super.initState();
    fetchSpaceUsageStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(60.w, 85.h, 61.w, 58.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CustomTopBar(
                  title: '이용할 공간을 선택해주세요',
                  subTitle: '공간을 선택해주세요',
                  needCallBackButton: true,
                  needHelpMeButton: false,
                ),
                Column(
                  children: [
                    SizedBox(height: 148.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ShowAvailableSpace(available: true),
                        SizedBox(width: 34.w),
                        ShowAvailableSpace(available: false),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 103.h),
            Text(
              '공간',
              style: DanuriText.body1Normal.copyWith(color: DanuriColor.label5),
            ),
            SizedBox(height: 14.h),
            if (_viewModel.spaceUsageStatus == null)
              SizedBox.shrink()
            else
              SizedBox(
                width: double.infinity,
                height: 48.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _viewModel.spaceUsageStatus?.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        SelectionBox(
                          available:
                              _viewModel.spaceUsageStatus![index].isAvailable,
                          isSelected: selectedSpace['spaceId'] ==
                              _viewModel.spaceUsageStatus![index].spaceId,
                          name: _viewModel.spaceUsageStatus![index].name,
                          onTap: () {
                            if (_viewModel
                                    .spaceUsageStatus![index].isAvailable ==
                                true) {
                              setState(() {
                                selectedSpace['spaceId'] =
                                    _viewModel.spaceUsageStatus![index].spaceId;
                              });
                            }
                          },
                        ),
                        if (_viewModel.spaceUsageStatus!.length != index + 1)
                          SizedBox(width: 12.w),
                      ],
                    );
                  },
                ),
              ),
            SizedBox(height: 226.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NextButton(
                  centerText: '다음',
                  onTap: () async {
                    context
                        .read<SpaceIdProvider>()
                        .setSpaceId(selectedSpace['spaceId']!);
                    context.read<RegisterUsedSpaceFlowProvider>().startFlow();
                    context.push('/login');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
