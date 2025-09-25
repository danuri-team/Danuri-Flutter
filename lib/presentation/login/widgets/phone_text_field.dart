import 'package:danuri_flutter/core/provider/phone_number_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/util/phone_number_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneTextField extends ConsumerStatefulWidget {
  const PhoneTextField({super.key});

  @override
  ConsumerState<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends ConsumerState<PhoneTextField> {
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _phoneNumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500.w,
      height: 64.h,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 12 || value.length == 13) {
            ref.read(phoneNumberProvider.notifier).update(
                  (state) => _phoneNumberController.text,
                );
          }
        },
        onFieldSubmitted: (value) {
          if (value.length == 12 || value.length == 13) {
            ref.read(phoneNumberProvider.notifier).update(
                  (state) => _phoneNumberController.text,
                );
          }
        },
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          PhoneNumberFormatter(),
        ],
        controller: _phoneNumberController,
        maxLength: 13,
        keyboardType: TextInputType.phone,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
          ref.read(phoneNumberProvider.notifier).update(
                (state) => _phoneNumberController.text,
              );
        },
        decoration: InputDecoration(
          hintText: '010-0000-0000',
          hintStyle: DanuriText.headLine1.copyWith(
            color: DanuriColor.label6,
            fontWeight: FontWeight.w400,
          ),
          counterText: '',
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
    );
  }
}
