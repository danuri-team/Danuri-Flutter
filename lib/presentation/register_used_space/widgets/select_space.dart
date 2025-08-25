import 'package:danuri_flutter/core/provider/space_id_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/data/view_models/space_view_model.dart';
import 'package:danuri_flutter/presentation/widgets/selection_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectSpace extends ConsumerStatefulWidget {
  const SelectSpace({super.key});

  @override
  ConsumerState<SelectSpace> createState() => _SelectSpaceState();
}

class _SelectSpaceState extends ConsumerState<SelectSpace> {
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
    final spaceId = ref.watch(spaceIdProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                      isSelected: spaceId ==
                          _viewModel.spaceUsageStatus![index].spaceId,
                      name: _viewModel.spaceUsageStatus![index].name,
                      onTap: () {
                        if (_viewModel.spaceUsageStatus![index].isAvailable ==
                            true) {
                              ref.read(spaceIdProvider.notifier).update((state) => _viewModel.spaceUsageStatus![index].spaceId,);
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
      ],
    );
  }
}
