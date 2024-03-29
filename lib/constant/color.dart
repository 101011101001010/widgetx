import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widgetx/basic/app.dart';

enum ColorXType { PRIMARY, CARD, DIVIDER, TEXT, TEXT_INV }

class ColorX {
  static final Color primaryL = Color(0xFFF8F8F8);
  static final Color primaryD = Color(0xFF000000);
  static final Color cardL = Color(0xFFFFFFFF);
  static final Color cardD = Color(0xFF181818);
  static final Color dividerL = Color(0xFFBBBBBB);
  static final Color dividerD = Color(0xFF888888);
  static final Color textL = Color(0xFF000000);
  static final Color textD = Color(0xFFFFFFFF);
  static final Color accent = Color(0xFF448AFF);
  static final Color positive = Color(0xFF00E676);
  static final Color negative = Color(0xFFFF5252);
  static final Color caption = Color(0xFF888888);

  static Color get(final BuildContext context, final ColorXType type) {
    final themeMode = MaterialAppX.kThemeMode;
    final isLight;

    switch (themeMode) {
      case ThemeMode.light:
        isLight = true;
        break;
      case ThemeMode.dark:
        isLight = false;
        break;
      default:
        isLight = MediaQuery.of(context).platformBrightness == Brightness.light;
    }

    switch (type) {
      case ColorXType.PRIMARY:
        return isLight ? primaryL : primaryD;
      case ColorXType.CARD:
        return isLight ? cardL : cardD;
      case ColorXType.DIVIDER:
        return isLight ? dividerL : dividerD;
      case ColorXType.TEXT:
        return isLight ? textL : textD;
      case ColorXType.TEXT_INV:
        return isLight ? textD : textL;
    }
  }
}
