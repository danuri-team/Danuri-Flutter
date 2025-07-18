import 'package:flutter/services.dart';

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String text = newValue.text;
    var buffer = StringBuffer();

    for (int i = 0; i < text.length; i++) {
      if (i == 3 || i == 7) {
        buffer.write('-');
      }
      buffer.write(text[i]);
    }

    String result = buffer.toString();
    return TextEditingValue(
      text: result,
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}
