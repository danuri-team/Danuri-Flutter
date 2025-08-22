import 'package:danuri_flutter/core/provider/flow_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/provider/space_id_provider.dart';
import 'package:danuri_flutter/data/models/enum/flow_type.dart';
import 'package:danuri_flutter/data/view_models/space_view_model.dart';
import 'package:danuri_flutter/presentation/widgets/button/next_button.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
import 'package:danuri_flutter/presentation/widgets/selection_box.dart';
import 'package:danuri_flutter/presentation/register_used_space/widgets/available_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterUsedSpace extends ConsumerStatefulWidget {
  const RegisterUsedSpace({super.key});

  @override
  ConsumerState<RegisterUsedSpace> createState() => _RegisterUsedSpaceState();
}

class _RegisterUsedSpaceState extends ConsumerState<RegisterUsedSpace> {
  Map<String, String?> selectedSpace = {'spaceId': null};

  final SpaceViewModel _viewModel = SpaceViewModel();

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
            CustomTopBar(
              title: '이용할 공간을 선택해주세요',
              subTitle: '공간을 선택해주세요',
              needCallBackButton: true,
              rightWidget: Column(
                children: [
                  SizedBox(height: 160.sp),
                  AvailableCategory(),
                ],
              ),
            ),
            SizedBox(height: 103.h),
            Text(
              '공간',
              style: DanuriText.body1Normal.copyWith(
                color: DanuriColor.label5,
                height: 0,
              ),
            ),
            SizedBox(height: 14.h),
            if (_viewModel.spaceUsageStatus == null)
              SizedBox(height: 48.h)
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
            SizedBox(height: 218.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NextButton(
                  centerText: '다음',
                  onTap: () async {
                    if (selectedSpace['spaceId'] != null) {
                      ref.read(spaceIdProvider.notifier).update((state) => selectedSpace['spaceId']!,);
                      ref.read(flowProvider.notifier).update((state) => FlowType.REGISTER_USED_SPACE_FLOW,);
                      context.push('/login');
                    }
                  },
                  isActivate: selectedSpace['spaceId'] != null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
