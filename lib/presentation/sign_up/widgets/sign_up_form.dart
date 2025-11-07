import 'package:danuri_flutter/core/provider/sign_up_schema_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/enum/sign_up_schema_type.dart';
import 'package:danuri_flutter/data/models/other/form/response/form_response.dart';
import 'package:danuri_flutter/presentation/widgets/selection_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class SignUpForm extends ConsumerStatefulWidget {
  const SignUpForm({
    super.key,
    required this.form,
    required this.schema,
  });

  final FormResponse? form;
  final List<Map<String, dynamic>>? schema;

  @override
  ConsumerState<SignUpForm> createState() => SignUpFormState();
}

class SignUpFormState extends ConsumerState<SignUpForm> {
  late List<TextEditingController> controllers;

  @override
  void dispose() {
    super.dispose();
    for (final controller in controllers) {
      controller.dispose();
    }
  }

  @override
  void didUpdateWidget(covariant SignUpForm oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.schema?.length != oldWidget.schema?.length) {
      controllers = List.generate(
        widget.schema!.length,
        (index) => TextEditingController(),
      );
    }
  }

  void resetSchema() {
    for (final controller in controllers) {
      controller.clear();
      ref.read(signUpSchemaProvider.notifier).resetSchema();
    }
  }

  @override
  Widget build(BuildContext context) {
    final signUpSchema = ref.watch(signUpSchemaProvider);
    final schema = widget.schema;
    return widget.form == null
        ? const CircularProgressIndicator()
        : Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: schema!.length,
                separatorBuilder: (context, index) => SizedBox(height: 34.h),
                itemBuilder: (context, schemaIndex) {
                  final controller = controllers[schemaIndex];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (schema[schemaIndex]['labelUrl'] != null)
                        GestureDetector(
                          onTap: () => launchUrl(
                            Uri.parse(schema[schemaIndex]['labelUrl']),
                          ),
                          child: Text(schema[schemaIndex]['label'],
                              style: DanuriText.body1Normal
                                  .copyWith(color: DanuriColor.primary1)),
                        )
                      else
                        Text(
                          schema[schemaIndex]['label'],
                          style: DanuriText.body1Normal,
                        ),
                      SizedBox(height: 14.h),
                      if (schema[schemaIndex]['type'] ==
                          SignUpSchemaType.INPUT.name)
                        SizedBox(
                          width: 335.w,
                          height: 48.h,
                          child: TextFormField(
                            onFieldSubmitted: (value) => ref
                                .read(signUpSchemaProvider.notifier)
                                .addSchema(
                                  key: schema[schemaIndex]['label'],
                                  value: controller.text.isEmpty
                                      ? null
                                      : controller.text,
                                ),
                            controller: controller,
                            onTapOutside: (event) {
                              FocusManager.instance.primaryFocus?.unfocus();
                              ref.read(signUpSchemaProvider.notifier).addSchema(
                                    key: schema[schemaIndex]['label'],
                                    value: controller.text.isEmpty
                                        ? null
                                        : controller.text,
                                  );
                            },
                            decoration: InputDecoration(
                              hintText: schema[schemaIndex]['placeHolder'],
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
                        )
                      else if (schema[schemaIndex]['type'] ==
                          SignUpSchemaType.SELECT.name)
                        SizedBox(
                          height: 48.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount:
                                List.castFrom(schema[schemaIndex]['options'])
                                    .length,
                            separatorBuilder: (context, index) =>
                                SizedBox(width: 12.w),
                            itemBuilder: (context, optionsIndex) {
                              return SelectionBox(
                                isSelected: signUpSchema.containsValue(
                                    schema[schemaIndex]['options'][optionsIndex]
                                        ['option']),
                                name: schema[schemaIndex]['options']
                                    [optionsIndex]['option'],
                                onTap: () {
                                  if (signUpSchema.containsValue(
                                          schema[schemaIndex]['options']
                                              [optionsIndex]['option']) ==
                                      false) {
                                    ref
                                        .read(signUpSchemaProvider.notifier)
                                        .addSchema(
                                          key: schema[schemaIndex]['label'],
                                          value:
                                              '${schema[schemaIndex]['options'][optionsIndex]['option']}',
                                        );
                                  }
                                },
                              );
                            },
                          ),
                        ),
                    ],
                  );
                },
              ),
            ],
          );
  }
}
