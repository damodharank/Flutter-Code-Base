import 'package:flutter/material.dart';

class AppThemeData {
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: _textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        iconTheme: IconThemeData(color: colorScheme.primary),
      ),
      dividerTheme: const DividerThemeData(
        color:
            Color.fromARGB(255, 241, 142, 97), // Set the color of the divider
        thickness: 1.0, // Set the thickness of the divider
        indent:
            10.0, // Set the horizontal space before the start of the divider
        endIndent:
            10.0, // Set the horizontal space after the end of the divider
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.surface,
      scaffoldBackgroundColor: colorScheme.surface,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          _lightFillColor.withOpacity(0.80),
          _darkFillColor,
        ),
        contentTextStyle: _textTheme.titleMedium!.apply(color: _darkFillColor),
      ),
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    surface: Color(0xFFDCF8C6), // WhatsApp light green as base background color
    brightness: Brightness.light,
    primary: Color(0xFF25D366), // WhatsApp green
    onPrimary: _lightFillColor,
    primaryContainer: Color(0xFFDCF8C6), // WhatsApp light green
    onPrimaryContainer: Color(0xFF128C7E),
    secondary: Color.fromARGB(255, 230, 233, 233),
    onSecondary: Color.fromARGB(255, 230, 233, 233),
    secondaryContainer: Color(0xFFFEE0D0),
    onSecondaryContainer: Color.fromARGB(255, 149, 149, 151),
    tertiary: Colors.grey,
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFFEE0D0),
    onTertiaryContainer: Color(0xFFFEE0D0),
    error: Color.fromARGB(255, 243, 24, 24),
    onError: _lightFillColor,
    errorContainer: _lightFillColor,
    onErrorContainer: _lightFillColor,
    onSurface: Colors.black87,
    surfaceContainerHighest: Color(0xFFFFFFFF),
    onSurfaceVariant: Colors.black54,
    outline: Color(0xFFFFFFFF),
    outlineVariant: Color(0xFFFFFFFF),
    shadow: Color(0xFFFFFFFF),
    scrim: Color(0xFFFFFFFF),
    inverseSurface: Color(0xFFFFFFFF),
    onInverseSurface: Color(0xFFFFFFFF),
    inversePrimary: Color(0xFFFFFFFF),
    surfaceTint: Color(0xFFFFFFFF),
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    surface: Color(0xFF121212), // Dark mode surface color
    brightness: Brightness.dark,
    primary: Color(0xFF25D366), // WhatsApp green
    onPrimary: _darkFillColor,
    primaryContainer: Color(0xFF128C7E), // Darker green
    onPrimaryContainer: Color(0xFFDCF8C6), // Light green
    secondary: Color(0xFF1F1F1F), // Dark mode secondary color
    onSecondary: Color(0xFFB0BEC5), // Light grey
    secondaryContainer: Color(0xFF37474F), // Dark grey
    onSecondaryContainer: Color(0xFFECEFF1), // Light grey
    tertiary: Colors.grey,
    onTertiary: Color(0xFFCFD8DC), // Light grey
    tertiaryContainer: Color(0xFF455A64), // Dark grey
    onTertiaryContainer: Color(0xFFCFD8DC), // Light grey
    error: Color(0xFFCF6679), // Dark mode error color
    onError: _darkFillColor,
    errorContainer: _darkFillColor,
    onErrorContainer: _darkFillColor,
    onSurface: Color(0xFFE0E0E0), // Light grey
    surfaceContainerHighest:
        Color(0xFF1C1C1C), // Dark mode highest surface color
    onSurfaceVariant: Colors.white70,
    outline: Color(0xFFBDBDBD), // Light grey
    outlineVariant: Color(0xFFBDBDBD), // Light grey
    shadow: Color(0xFF000000), // Black
    scrim: Color(0xFF000000), // Black
    inverseSurface: Color(0xFFE0E0E0), // Light grey
    onInverseSurface: Color(0xFF121212), // Dark mode surface color
    inversePrimary: Color(0xFF25D366), // WhatsApp green
    surfaceTint: Color(0xFF25D366), // WhatsApp green
  );

  static const _thin = FontWeight.w100;
  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _bold = FontWeight.w700;

  static const TextTheme _textTheme = TextTheme(
    headlineLarge:
        TextStyle(fontSize: 26.0, fontFamily: 'Roboto', fontWeight: _bold),
    headlineMedium:
        TextStyle(fontSize: 23.0, fontFamily: 'Roboto', fontWeight: _medium),
    headlineSmall:
        TextStyle(fontSize: 18.0, fontFamily: 'Roboto', fontWeight: _regular),
    titleLarge:
        TextStyle(fontSize: 21.0, fontFamily: 'Roboto', fontWeight: _bold),
    titleMedium:
        TextStyle(fontSize: 20.0, fontFamily: 'Roboto', fontWeight: _medium),
    titleSmall:
        TextStyle(fontSize: 14.0, fontFamily: 'Roboto', fontWeight: _medium),
    labelLarge:
        TextStyle(fontSize: 18.0, fontFamily: 'Roboto', fontWeight: _bold),
    labelMedium:
        TextStyle(fontSize: 16.0, fontFamily: 'Roboto', fontWeight: _medium),
    labelSmall:
        TextStyle(fontSize: 14.0, fontFamily: 'Roboto', fontWeight: _thin),
    bodyLarge:
        TextStyle(fontSize: 18.0, fontFamily: 'Roboto', fontWeight: _bold),
    bodyMedium:
        TextStyle(fontSize: 16.0, fontFamily: 'Roboto', fontWeight: _medium),
    bodySmall:
        TextStyle(fontSize: 18.0, fontFamily: 'Roboto', fontWeight: _thin),
  );
}
