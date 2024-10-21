import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

IntlPhoneField contactTextFormField(
  TextEditingController controller,
  String val,
  String areaCode,
  TextTheme textTheme,
  String hintText,
  ColorScheme colorScheme,
  ValueChanged onCountryCodeChanged,
  String? Function() validator,
) {
  // print("areaCode==>: $areaCode");
  // print("controller==>: ${controller.text}");
  return IntlPhoneField(
    inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
    keyboardType: TextInputType.phone,
    disableLengthCheck: false,
    controller: controller,
    key: const ValueKey('contact1'),
    validator: (value) {
      if (controller.text.trim().isEmpty || controller.text.trim().length < 4) {
        return 'Invalid Mobile Number';
      }
      return null;
    },
    // onSaved: (newValue) => val = newValue! as String,
    // onSaved: (newValue) => val = newValue!,
    onSaved: (newValue) {
      if (newValue != null) {
        val = newValue.completeNumber;
      }
    },
    decoration: InputDecoration(
        errorStyle: const TextStyle(color: Colors.red),
        hintText: hintText,
        // filled: true,
        // fillColor: colorScheme.primaryContainer.withOpacity(0.2),
        hintStyle: textTheme.labelMedium?.copyWith(color: Colors.grey),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: colorScheme.primary, width: 0.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 0.5,
          ),
        ),
        filled: true,
        fillColor: colorScheme.tertiaryContainer.withOpacity(0.3),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    initialCountryCode: areaCode.isNotEmpty ? areaCode : 'US',
    onChanged: (phone) {
      // print("on change==>$phone");
      onCountryCodeChanged(phone);
    },
  );
}
