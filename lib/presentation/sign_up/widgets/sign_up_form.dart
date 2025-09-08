import 'package:danuri_flutter/core/provider/sign_up_schema_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/data/models/other/form/response/form_response.dart';
import 'package:danuri_flutter/presentation/widgets/selection_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpForm extends ConsumerStatefulWidget {
  const SignUpForm({
    super.key,
    required this.form,
    required this.schema,
  });

  final FormResponse? form;
  final List<Map<String, dynamic>>? schema;

  @override
  ConsumerState<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends ConsumerState<SignUpForm> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(signUpSchemaProvider);
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
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('$state'),
                      Text(schema[schemaIndex]['label']),
                      SizedBox(height: 14.h),
                      schema[schemaIndex]['options'] == null
                          ? SizedBox(
                              width: 335.w,
                              height: 48.h,
                              child: TextFormField(
                                onFieldSubmitted: (value) => ref
                                    .read(signUpSchemaProvider.notifier)
                                    .addSchema(
                                      key: schema[schemaIndex]['label'],
                                      value: _controller.text,
                                    ),
                                controller: _controller,
                                onTapOutside: (event) {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  ref
                                      .read(signUpSchemaProvider.notifier)
                                      .addSchema(
                                        key: schema[schemaIndex]['label'],
                                        value: _controller.text,
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
                          : SizedBox(
                              height: 48.h,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: List.castFrom(
                                        schema[schemaIndex]['options'])
                                    .length,
                                separatorBuilder: (context, index) =>
                                    SizedBox(width: 12.w),
                                itemBuilder: (context, optionsIndex) {
                                  final name = List.castFrom(
                                      schema[schemaIndex]['options']);
                                  return SelectionBox(
                                    isSelected:
                                        state.containsValue(name[optionsIndex]),
                                    name: name[optionsIndex],
                                    onTap: () {
                                      if (state.containsValue(
                                              name[optionsIndex]) ==
                                          false) {
                                        setState(() {
                                          ref
                                              .read(
                                                  signUpSchemaProvider.notifier)
                                              .addSchema(
                                                key: schema[schemaIndex]
                                                    ['label'],
                                                value: name[optionsIndex],
                                              );
                                        });
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
