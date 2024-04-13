import 'package:flutter/material.dart';

const double _darkColorThreshold = 180; // Adjust based on your preference

// Define base colors
const Color _primaryColor = Color(0xFF28B485); // Hot Teal
const Color _grey900 = Color(0xFF202020); // Very dark grey
const Color _white = Color(0xFFFFFFFF); // White

// Define light and dark color schemes
final ThemeData _lightTheme = ThemeData(
  primaryColor: _primaryColor,
  //primaryColorBrightness: Brightness.light,
  primarySwatch: Colors.teal,
  brightness: Brightness.light,
  scaffoldBackgroundColor: _white,
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: Colors.black),
  ),
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.teal,
    brightness: Brightness.light,
    //secondary: Colors.blueGrey,
  ),
);

final ThemeData _darkTheme = ThemeData(
  primaryColor: _primaryColor,
  //primaryColorBrightness: Brightness.dark,
  primarySwatch: Colors.teal,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: _grey900,
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: _white),
  ),
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.teal,
    brightness: Brightness.dark,
    //secondary: Colors.blueGrey,
  ),
);

// Check if the current platform theme is dark
bool isDarkMode(BuildContext context) =>
    MediaQuery.platformBrightnessOf(context) == Brightness.dark;

// Create a custom theme based on light/dark mode and accessibility
ThemeData getTheme(BuildContext context) {
  final isDark = isDarkMode(context);
  final theme = isDark ? _darkTheme : _lightTheme;

  // Check the contrast ratio for text color based on background color
  final textColor = theme.textTheme.bodyText1!.color!;
  final bgColor = theme.scaffoldBackgroundColor;
  final contrast = calculateContrast(textColor.computeLuminance(), bgColor.computeLuminance());

  // If contrast is low, adjust text color for better accessibility
  if (contrast < _darkColorThreshold) {
    return theme.copyWith(
      textTheme: theme.textTheme.copyWith(
        bodyText1: TextStyle(color: adjustTextColor(textColor, bgColor)),
      ),
    );
  }

  return theme;
}

// Calculate contrast ratio between two luminance values
double calculateContrast(double lum1, double lum2) {
  final ratio = lum1 > lum2 ? (lum1 + 0.05) / (lum2 + 0.05) : (lum2 + 0.05) / (lum1 + 0.05);
  return ratio.roundToDouble();
}

// Adjust text color to improve contrast (experimental)
Color adjustTextColor(Color textColor, Color backgroundColor) {
  final hslColor = HSLColor.fromColor(textColor);
  final adjustment = backgroundColor.computeLuminance() > 0.5 ? -0.2 : 0.2;
  return hslColor.withLightness((hslColor.lightness + adjustment).clamp(0.0, 1.0)).toColor();
}

// Use the getTheme function in your MaterialApp widget

