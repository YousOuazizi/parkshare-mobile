import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  // Modern Color Palette 2025
  static const Color primaryColor = Color(0xFF6366F1); // Modern Indigo
  static const Color primaryLight = Color(0xFF818CF8);
  static const Color primaryDark = Color(0xFF4F46E5);

  static const Color secondaryColor = Color(0xFF06B6D4); // Cyan
  static const Color secondaryLight = Color(0xFF22D3EE);
  static const Color secondaryDark = Color(0xFF0891B2);

  static const Color accentColor = Color(0xFFEC4899); // Pink accent
  static const Color accentLight = Color(0xFFF472B6);

  static const Color errorColor = Color(0xFFEF4444);
  static const Color successColor = Color(0xFF10B981);
  static const Color warningColor = Color(0xFFF59E0B);
  static const Color infoColor = Color(0xFF3B82F6);

  // Neutral colors for better hierarchy
  static const Color neutralGray50 = Color(0xFFFAFAFA);
  static const Color neutralGray100 = Color(0xFFF5F5F5);
  static const Color neutralGray200 = Color(0xFFE5E5E5);
  static const Color neutralGray300 = Color(0xFFD4D4D4);
  static const Color neutralGray400 = Color(0xFFA3A3A3);
  static const Color neutralGray500 = Color(0xFF737373);
  static const Color neutralGray600 = Color(0xFF525252);
  static const Color neutralGray700 = Color(0xFF404040);
  static const Color neutralGray800 = Color(0xFF262626);
  static const Color neutralGray900 = Color(0xFF171717);

  // Modern Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF6366F1), Color(0xFF8B5CF6), Color(0xFFEC4899)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [Color(0xFF06B6D4), Color(0xFF3B82F6)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient successGradient = LinearGradient(
    colors: [Color(0xFF10B981), Color(0xFF059669)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient sunsetGradient = LinearGradient(
    colors: [Color(0xFFF59E0B), Color(0xFFEF4444), Color(0xFFEC4899)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.light,
      primary: primaryColor,
      secondary: secondaryColor,
      error: errorColor,
      surface: Colors.white,
      background: neutralGray50,
    ),

    scaffoldBackgroundColor: neutralGray50,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      foregroundColor: neutralGray900,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      titleTextStyle: TextStyle(
        color: neutralGray900,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
        letterSpacing: -0.5,
      ),
    ),

    // Card Theme - Modern with subtle shadow
    cardTheme: CardTheme(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
        side: BorderSide(
          color: neutralGray200.withOpacity(0.5),
          width: 0.5,
        ),
      ),
      color: Colors.white,
      shadowColor: Colors.black.withOpacity(0.04),
    ),

    // Elevated Button Theme - Modern with hover effects
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
        shadowColor: primaryColor.withOpacity(0.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Inter',
          letterSpacing: -0.3,
        ),
      ),
    ),

    // Outlined Button Theme
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
        side: const BorderSide(color: primaryColor, width: 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Inter',
          letterSpacing: -0.3,
        ),
      ),
    ),

    // Text Button Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          fontFamily: 'Inter',
        ),
      ),
    ),

    // Input Decoration Theme - Modern & Clean
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: neutralGray200, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: neutralGray200, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: primaryColor, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: errorColor, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: errorColor, width: 2),
      ),
      labelStyle: const TextStyle(
        color: neutralGray500,
        fontSize: 15,
        fontWeight: FontWeight.w500,
        fontFamily: 'Inter',
        letterSpacing: -0.2,
      ),
      hintStyle: const TextStyle(
        color: neutralGray400,
        fontSize: 15,
        fontFamily: 'Inter',
        letterSpacing: -0.2,
      ),
    ),

    // Floating Action Button Theme - Modern with shadow
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 0,
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      extendedSizeConstraints: const BoxConstraints.tightFor(height: 56),
      extendedPadding: const EdgeInsets.symmetric(horizontal: 24),
      extendedTextStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.3,
      ),
    ),

    // Bottom Navigation Bar Theme - Modern with subtle border
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: Colors.white,
      selectedItemColor: primaryColor,
      unselectedItemColor: neutralGray400,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        fontFamily: 'Inter',
        letterSpacing: -0.2,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: 'Inter',
        letterSpacing: -0.2,
      ),
    ),

    // Chip Theme - Modern with better contrast
    chipTheme: const ChipThemeData(
      backgroundColor: neutralGray100,
      selectedColor: primaryColor,
      disabledColor: neutralGray200,
      labelStyle: TextStyle(
        color: neutralGray900,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Inter',
        letterSpacing: -0.2,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),

    // Dialog Theme - Modern & Elegant
    dialogTheme: const DialogTheme(
      elevation: 0,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(28)),
      ),
      titleTextStyle: TextStyle(
        color: neutralGray900,
        fontSize: 22,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
        letterSpacing: -0.5,
      ),
      contentTextStyle: TextStyle(
        color: neutralGray700,
        fontSize: 15,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
        height: 1.5,
      ),
    ),

    // Snackbar Theme - Modern with blur effect
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      backgroundColor: neutralGray900,
      contentTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Inter',
        letterSpacing: -0.2,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      actionTextColor: primaryLight,
    ),

    // Text Theme - Modern Typography with better hierarchy
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w800,
        color: neutralGray900,
        fontFamily: 'Inter',
        height: 1.1,
        letterSpacing: -1.5,
      ),
      displayMedium: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w800,
        color: neutralGray900,
        fontFamily: 'Inter',
        height: 1.15,
        letterSpacing: -1.2,
      ),
      displaySmall: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: neutralGray900,
        fontFamily: 'Inter',
        height: 1.2,
        letterSpacing: -1.0,
      ),
      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: neutralGray900,
        fontFamily: 'Inter',
        height: 1.25,
        letterSpacing: -0.8,
      ),
      headlineMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: neutralGray900,
        fontFamily: 'Inter',
        height: 1.3,
        letterSpacing: -0.6,
      ),
      headlineSmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: neutralGray900,
        fontFamily: 'Inter',
        height: 1.3,
        letterSpacing: -0.5,
      ),
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: neutralGray900,
        fontFamily: 'Inter',
        height: 1.4,
        letterSpacing: -0.4,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: neutralGray900,
        fontFamily: 'Inter',
        height: 1.4,
        letterSpacing: -0.3,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: neutralGray900,
        fontFamily: 'Inter',
        height: 1.4,
        letterSpacing: -0.2,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: neutralGray700,
        fontFamily: 'Inter',
        height: 1.6,
        letterSpacing: -0.2,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: neutralGray700,
        fontFamily: 'Inter',
        height: 1.6,
        letterSpacing: -0.1,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: neutralGray600,
        fontFamily: 'Inter',
        height: 1.5,
        letterSpacing: 0,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: neutralGray800,
        fontFamily: 'Inter',
        letterSpacing: -0.1,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: neutralGray700,
        fontFamily: 'Inter',
        letterSpacing: -0.1,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        color: neutralGray600,
        fontFamily: 'Inter',
        letterSpacing: 0,
      ),
    ),

    fontFamily: 'Inter',
  );

  // Dark Theme - Modern OLED-friendly
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.dark,
      primary: primaryLight,
      secondary: secondaryLight,
      error: errorColor,
      surface: const Color(0xFF1C1C1E),
      background: const Color(0xFF000000),
    ),

    scaffoldBackgroundColor: const Color(0xFF000000),

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
        letterSpacing: -0.5,
      ),
    ),

    // Card Theme - Dark mode optimized
    cardTheme: CardTheme(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
        side: BorderSide(
          color: neutralGray800.withOpacity(0.5),
          width: 0.5,
        ),
      ),
      color: const Color(0xFF1C1C1E),
      shadowColor: Colors.white.withOpacity(0.02),
    ),

    // Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: primaryLight,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
        shadowColor: primaryLight.withOpacity(0.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Inter',
          letterSpacing: -0.3,
        ),
      ),
    ),

    // Outlined Button Theme
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primaryLight,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
        side: BorderSide(color: primaryLight, width: 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Inter',
          letterSpacing: -0.3,
        ),
      ),
    ),

    // Text Button Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryLight,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          fontFamily: 'Inter',
          letterSpacing: -0.2,
        ),
      ),
    ),

    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF1C1C1E),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: neutralGray800, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: neutralGray800, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: primaryLight, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: errorColor, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: errorColor, width: 2),
      ),
      labelStyle: TextStyle(
        color: neutralGray400,
        fontSize: 15,
        fontWeight: FontWeight.w500,
        fontFamily: 'Inter',
        letterSpacing: -0.2,
      ),
      hintStyle: TextStyle(
        color: neutralGray500,
        fontSize: 15,
        fontFamily: 'Inter',
        letterSpacing: -0.2,
      ),
    ),

    // Floating Action Button Theme
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 0,
      backgroundColor: primaryLight,
      foregroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    ),

    // Bottom Navigation Bar Theme
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: const Color(0xFF1C1C1E),
      selectedItemColor: primaryLight,
      unselectedItemColor: neutralGray500,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        fontFamily: 'Inter',
        letterSpacing: -0.2,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: 'Inter',
        letterSpacing: -0.2,
      ),
    ),

    // Chip Theme
    chipTheme: ChipThemeData(
      backgroundColor: neutralGray800,
      selectedColor: primaryLight,
      disabledColor: neutralGray800,
      labelStyle: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Inter',
        letterSpacing: -0.2,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),

    // Dialog Theme
    dialogTheme: const DialogTheme(
      elevation: 0,
      backgroundColor: Color(0xFF1C1C1E),
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(28)),
      ),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
        letterSpacing: -0.5,
      ),
      contentTextStyle: TextStyle(
        color: neutralGray300,
        fontSize: 15,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
        height: 1.5,
      ),
    ),

    // Snackbar Theme
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      backgroundColor: neutralGray800,
      contentTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Inter',
        letterSpacing: -0.2,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      actionTextColor: primaryLight,
    ),

    fontFamily: 'Inter',
  );
}
