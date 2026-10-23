import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff2f144d),
      surfaceTint: Color(0xff6e528d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff462b64),
      onPrimaryContainer: Color(0xffb494d5),
      secondary: Color(0xff665973),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffeedcfb),
      onSecondaryContainer: Color(0xff6c5f79),
      tertiary: Color(0xff420d2b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5d2341),
      onTertiaryContainer: Color(0xffd78aac),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffef7fd),
      onSurface: Color(0xff1d1b1f),
      onSurfaceVariant: Color(0xff4a454e),
      outline: Color(0xff7c757f),
      outlineVariant: Color(0xffccc3d0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff322f34),
      inversePrimary: Color(0xffdab9fd),
      primaryFixed: Color(0xffefdbff),
      onPrimaryFixed: Color(0xff280b45),
      primaryFixedDim: Color(0xffdab9fd),
      onPrimaryFixedVariant: Color(0xff553a74),
      secondaryFixed: Color(0xffeedcfb),
      onSecondaryFixed: Color(0xff21172d),
      secondaryFixedDim: Color(0xffd1c0de),
      onSecondaryFixedVariant: Color(0xff4e425a),
      tertiaryFixed: Color(0xffffd8e6),
      onTertiaryFixed: Color(0xff3a0524),
      tertiaryFixedDim: Color(0xffffafd2),
      onTertiaryFixedVariant: Color(0xff6f3250),
      surfaceDim: Color(0xffdfd8de),
      surfaceBright: Color(0xfffef7fd),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff9f1f7),
      surfaceContainer: Color(0xfff3ecf2),
      surfaceContainerHigh: Color(0xffede6ec),
      surfaceContainerHighest: Color(0xffe7e0e6),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff2f144d),
      surfaceTint: Color(0xff6e528d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff462b64),
      onPrimaryContainer: Color(0xffddbcff),
      secondary: Color(0xff3d3149),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff756882),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff420d2b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5d2341),
      onTertiaryContainer: Color(0xffffb3d3),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffef7fd),
      onSurface: Color(0xff131014),
      onSurfaceVariant: Color(0xff39343e),
      outline: Color(0xff56505a),
      outlineVariant: Color(0xff716b75),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff322f34),
      inversePrimary: Color(0xffdab9fd),
      primaryFixed: Color(0xff7d609d),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff644883),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff756882),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff5c5069),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff9c5778),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff80405f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffcbc5ca),
      surfaceBright: Color(0xfffef7fd),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff9f1f7),
      surfaceContainer: Color(0xffede6ec),
      surfaceContainerHigh: Color(0xffe1dbe1),
      surfaceContainerHighest: Color(0xffd6d0d5),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff2f144d),
      surfaceTint: Color(0xff6e528d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff462b64),
      onPrimaryContainer: Color(0xfffff6ff),
      secondary: Color(0xff33273e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff50445d),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff420d2b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5d2341),
      onTertiaryContainer: Color(0xfffff6f7),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffef7fd),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff2f2a33),
      outlineVariant: Color(0xff4d4751),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff322f34),
      inversePrimary: Color(0xffdab9fd),
      primaryFixed: Color(0xff583c77),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff40255e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff50445d),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff392e45),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff723453),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff571e3c),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffbdb7bd),
      surfaceBright: Color(0xfffef7fd),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6eff5),
      surfaceContainer: Color(0xffe7e0e6),
      surfaceContainerHigh: Color(0xffd9d2d8),
      surfaceContainerHighest: Color(0xffcbc5ca),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffdab9fd),
      surfaceTint: Color(0xffdab9fd),
      onPrimary: Color(0xff3e235c),
      primaryContainer: Color(0xff462b64),
      onPrimaryContainer: Color(0xffb494d5),
      secondary: Color(0xffd1c0de),
      onSecondary: Color(0xff372c43),
      secondaryContainer: Color(0xff50445d),
      onSecondaryContainer: Color(0xffc3b2d0),
      tertiary: Color(0xffffafd2),
      onTertiary: Color(0xff541c39),
      tertiaryContainer: Color(0xff5d2341),
      onTertiaryContainer: Color(0xffd78aac),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff151217),
      onSurface: Color(0xffe7e0e6),
      onSurfaceVariant: Color(0xffccc3d0),
      outline: Color(0xff968e99),
      outlineVariant: Color(0xff4a454e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe7e0e6),
      inversePrimary: Color(0xff6e528d),
      primaryFixed: Color(0xffefdbff),
      onPrimaryFixed: Color(0xff280b45),
      primaryFixedDim: Color(0xffdab9fd),
      onPrimaryFixedVariant: Color(0xff553a74),
      secondaryFixed: Color(0xffeedcfb),
      onSecondaryFixed: Color(0xff21172d),
      secondaryFixedDim: Color(0xffd1c0de),
      onSecondaryFixedVariant: Color(0xff4e425a),
      tertiaryFixed: Color(0xffffd8e6),
      onTertiaryFixed: Color(0xff3a0524),
      tertiaryFixedDim: Color(0xffffafd2),
      onTertiaryFixedVariant: Color(0xff6f3250),
      surfaceDim: Color(0xff151217),
      surfaceBright: Color(0xff3b383d),
      surfaceContainerLowest: Color(0xff100d11),
      surfaceContainerLow: Color(0xff1d1b1f),
      surfaceContainer: Color(0xff211f23),
      surfaceContainerHigh: Color(0xff2c292d),
      surfaceContainerHighest: Color(0xff373438),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffebd4ff),
      surfaceTint: Color(0xffdab9fd),
      onPrimary: Color(0xff331750),
      primaryContainer: Color(0xffa384c3),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffe7d6f4),
      onSecondary: Color(0xff2c2137),
      secondaryContainer: Color(0xff9a8ba7),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffd0e2),
      onTertiary: Color(0xff47102e),
      tertiaryContainer: Color(0xffc47a9c),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff151217),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffe3d9e6),
      outline: Color(0xffb7afbb),
      outlineVariant: Color(0xff958e99),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe7e0e6),
      inversePrimary: Color(0xff573b75),
      primaryFixed: Color(0xffefdbff),
      onPrimaryFixed: Color(0xff1d003a),
      primaryFixedDim: Color(0xffdab9fd),
      onPrimaryFixedVariant: Color(0xff442962),
      secondaryFixed: Color(0xffeedcfb),
      onSecondaryFixed: Color(0xff170c22),
      secondaryFixedDim: Color(0xffd1c0de),
      onSecondaryFixedVariant: Color(0xff3d3149),
      tertiaryFixed: Color(0xffffd8e6),
      onTertiaryFixed: Color(0xff2a0018),
      tertiaryFixedDim: Color(0xffffafd2),
      onTertiaryFixedVariant: Color(0xff5b213f),
      surfaceDim: Color(0xff151217),
      surfaceBright: Color(0xff474348),
      surfaceContainerLowest: Color(0xff08070a),
      surfaceContainerLow: Color(0xff1f1d21),
      surfaceContainer: Color(0xff2a272b),
      surfaceContainerHigh: Color(0xff353136),
      surfaceContainerHighest: Color(0xff403c41),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff8ecff),
      surfaceTint: Color(0xffdab9fd),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffd6b5f9),
      onPrimaryContainer: Color(0xff15002c),
      secondary: Color(0xfff8ecff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffcdbcda),
      onSecondaryContainer: Color(0xff10071c),
      tertiary: Color(0xffffebf1),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfffcabce),
      onTertiaryContainer: Color(0xff200011),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff151217),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xfff7edf9),
      outlineVariant: Color(0xffc8c0cc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe7e0e6),
      inversePrimary: Color(0xff573b75),
      primaryFixed: Color(0xffefdbff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffdab9fd),
      onPrimaryFixedVariant: Color(0xff1d003a),
      secondaryFixed: Color(0xffeedcfb),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffd1c0de),
      onSecondaryFixedVariant: Color(0xff170c22),
      tertiaryFixed: Color(0xffffd8e6),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffafd2),
      onTertiaryFixedVariant: Color(0xff2a0018),
      surfaceDim: Color(0xff151217),
      surfaceBright: Color(0xff534f54),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff211f23),
      surfaceContainer: Color(0xff322f34),
      surfaceContainerHigh: Color(0xff3e3a3f),
      surfaceContainerHighest: Color(0xff49464a),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
