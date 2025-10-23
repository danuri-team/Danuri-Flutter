import 'package:danuri_flutter/core/provider/sign_up_schema_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/data/models/enum/sign_up_schema_type.dart';
import 'package:danuri_flutter/presentation/widgets/selection_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class SignUpForm extends ConsumerStatefulWidget {
  const SignUpForm({
    super.key,
    required this.schema,
  });

  final List<Map<String, dynamic>> schema;

  @override
  ConsumerState<SignUpForm> createState() => SignUpFormState();
}

class SignUpFormState extends ConsumerState<SignUpForm> {
  final Map<int, TextEditingController> _controllers = {};

  @override
  void initState() {
    super.initState();
    for (final field in widget.schema) {
      if (field['type'] == SignUpSchemaType.INPUT.name) {
        _controllers[field['id']] = TextEditingController();
      }
    }
  }

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  void resetForm() {
    ref.read(requestSignUpFormProvider.notifier).resetSchema();
    for (final controller in _controllers.values) {
      controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.schema.length,
      separatorBuilder: (context, index) => SizedBox(height: 34.h),
      itemBuilder: (context, index) {
        final field = widget.schema[index];
        return _buildFormField(field);
      },
    );
  }

  Widget _buildFormField(Map<String, dynamic> field) {
    final type = SignUpSchemaType.values.byName(field['type']);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(field),
        SizedBox(height: 14.h),
        switch (type) {
          SignUpSchemaType.INPUT => _buildInputField(field),
          SignUpSchemaType.SELECT => _buildSelectField(field),
        },
      ],
    );
  }

  Widget _buildLabel(Map<String, dynamic> field) {
    final label = field['label'] as String;
    final labelUrl = field['labelUrl'] as String?;

    if (labelUrl != null) {
      return GestureDetector(
        onTap: () => launchUrl(Uri.parse(labelUrl)),
        child: Text(
          label,
          style: DanuriText.body1Normal.copyWith(color: DanuriColor.primary1),
        ),
      );
    }

    return Text(label, style: DanuriText.body1Normal);
  }

  Widget _buildInputField(Map<String, dynamic> field) {
    final controller = _controllers[field['id']];
    final label = field['label'] as String;
    final placeHolder = field['placeHolder'] as String?;

    void updateProvider() {
      final text = controller?.text;
      ref.read(requestSignUpFormProvider.notifier).addField(
            key: label,
            value: text != null && text.isNotEmpty ? text : null,
          );
    }

    return SizedBox(
      width: 335.w,
      height: 48.h,
      child: TextFormField(
        controller: controller,
        onFieldSubmitted: (_) => updateProvider(),
        onTapOutside: (_) {
          FocusManager.instance.primaryFocus?.unfocus();
          updateProvider();
        },
        decoration: InputDecoration(
          hintText: placeHolder,
          hintStyle: DanuriText.body1Normal.copyWith(color: DanuriColor.label2),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(width: 1, color: DanuriColor.line2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(width: 2, color: DanuriColor.primary1),
          ),
        ),
      ),
    );
  }

  Widget _buildSelectField(Map<String, dynamic> field) {
    final requestSchema = ref.watch(requestSignUpFormProvider);
    final label = field['label'] as String;
    final options =
        List.castFrom<dynamic, Map<String, dynamic>>(field['options']);

    return SizedBox(
      height: 48.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: options.length,
        separatorBuilder: (context, index) => SizedBox(width: 12.w),
        itemBuilder: (context, index) {
          final option = options[index]['option'] as String;
          final isSelected = requestSchema[label] == option;

          return SelectionBox(
            isSelected: isSelected,
            name: option,
            onTap: () {
              if (!isSelected) {
                ref.read(requestSignUpFormProvider.notifier).addField(
                      key: label,
                      value: option,
                    );
              }
            },
          );
        },
      ),
    );
  }
}
