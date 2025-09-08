import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/data/view_models/device_auth_view_model.dart';
import 'package:danuri_flutter/presentation/widgets/button/next_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrganAuthForm extends StatefulWidget {
  const OrganAuthForm({super.key});

  @override
  State<OrganAuthForm> createState() => _OrganAuthFormState();
}

class _OrganAuthFormState extends State<OrganAuthForm> {
  final TextEditingController _deviceIdController = TextEditingController();
  final DeviceAuthViewModel _viewModel = DeviceAuthViewModel();

  @override
  void initState() {
    super.initState();
    _deviceIdController.addListener(
      () => setState(() {}),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _deviceIdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '기기 ID',
          style: DanuriText.label1Normal.copyWith(color: DanuriColor.label4),
        ),
        SizedBox(height: 8.h),
        SizedBox(
          width: 400.w,
          height: 48.h,
          child: TextFormField(
            controller: _deviceIdController,
            onTapOutside: (event) =>
                FocusManager.instance.primaryFocus?.unfocus(),
            decoration: InputDecoration(
              hintText: '8e04a571-4956-444b-9845-8a923a47c495',
              hintStyle:
                  DanuriText.body1Normal.copyWith(color: DanuriColor.label6),
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
        SizedBox(height: 13.h),
        NextButton(
          centerText: '연결하기',
          onTap: () async {
            if (_deviceIdController.text.isNotEmpty) {
              await _viewModel.deviceAuth(deviceId: _deviceIdController.text);
              if (context.mounted) {
                AppNavigation.goHome(context);
              }
            }
          },
          isActivate: _deviceIdController.text.isNotEmpty,
          organAuthVersion: true,
        ),
      ],
    );
  }
}
