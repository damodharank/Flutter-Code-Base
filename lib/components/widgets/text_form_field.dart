import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

TextFormField customTextFormField(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
    TextEditingController controller,
    String hintText,
    TextInputType type,
    String? Function() validator,
    String val,
    String key,
    bool readOnly,
    FocusNode focusNode) {
  return TextFormField(
    focusNode: focusNode,
    textInputAction: TextInputAction.done,
    onEditingComplete: () {
      // Hide the keyboard when the "Done" button is pressed
      focusNode.unfocus();
    },
    style: textTheme.labelMedium
        ?.copyWith(color: colorScheme.onSurface.withOpacity(0.7)),
    controller: controller,
    keyboardType: type,
    inputFormatters: [
      LengthLimitingTextInputFormatter(50),
      if (type == TextInputType.number)
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      if (type == TextInputType.name)
        // FilteringTextInputFormatter.allow(RegExp(r'^[0-9a-zA-Z\s]*$')),
        FilteringTextInputFormatter.allow(RegExp(r'[0-9a-zA-Z\s]')),
    ],
    key: ValueKey(key),
    enabled: !readOnly,
    readOnly: readOnly,
    validator: (value) {
      return validator();
    },
    // maxLength: type == TextInputType.name ? 50 : null,
    onSaved: (newValue) => val = newValue!,

    decoration: InputDecoration(
        // filled: true,
        // fillColor: colorScheme.primaryContainer.withOpacity(0.2),
        errorStyle: const TextStyle(color: Colors.red),
        hintText: hintText,
        hintStyle: textTheme.labelMedium?.copyWith(color: Colors.grey),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: colorScheme.primary, width: 0.5),
        ),
        filled: true,
        fillColor: colorScheme.tertiaryContainer.withOpacity(0.3),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
  );
}
