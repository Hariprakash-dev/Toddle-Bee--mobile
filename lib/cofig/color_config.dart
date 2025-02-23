import 'package:flutter/material.dart';

import 'enums.dart';

class ColorConfig {
  final AppTarget target;
  late final Color primary,
      primaryLight,
      secondary,
      accent,
      accentDark,
      pureDark,
      pureWhite,
      backgroundDark,
      backgroundLight,
      shimmer,
      scaff,
      grey;

  ColorConfig({required this.target}) {
    switch (target) {
      case AppTarget.local:
        common();
        break;
      case AppTarget.testing:
        common();
        break;
      case AppTarget.production:
        common();
        break;
    }
  }

  common() {
    primary = const Color(0xff0C72B9);
    primaryLight = const Color(0xffD9EAF9);
    secondary = const Color(0xffF28D1E);
    accent = const Color(0xFF5cd561);
    accentDark = const Color(0xFF00ADB5);
    backgroundDark = const Color(0xFF474747);
    backgroundLight = const Color(0xFFF7F6F0);
    pureDark = const Color(0xFF000000);
    pureWhite = const Color(0xFFFFFFFF);
    shimmer = const Color(0xffc4dfdf);
    scaff = const Color(0xffE5E5E5);
    grey = const Color(0xffAEB4C1);
  }
}
