import 'package:flutter/material.dart';
import 'package:toddle_bee_app/Provider/theme_provider.dart';
import 'package:toddle_bee_app/cofig/enums.dart';



extension ContextExtension on BuildContext {
  double widthFull() => MediaQuery.of(this).size.width;
  double heightFull() => MediaQuery.of(this).size.height;
  double widthHalf() => MediaQuery.of(this).size.width / 2;
  double heightHalf() => MediaQuery.of(this).size.height / 2;
  double widthQuarter() => MediaQuery.of(this).size.width / 3;
  double heightQuarter() => MediaQuery.of(this).size.height / 3;
  bool isMobileBool() {
    if (MediaQuery.of(this).size.width < MediaQuery.of(this).size.height) {
      return true;
    } else {
      return false;
    }
  }

  double isMobile(double width) {
    if (MediaQuery.of(this).size.width < MediaQuery.of(this).size.height) {
      return MediaQuery.of(this).size.width - 16;
    } else {
      return width;
    }
  }


  Color isPrimary() {
    if (provdTheme.themeMode == ThemeMode.dark) {
      return targetDetailColor.secondary;
    } else {
      return targetDetailColor.primary;
    }
  }

  Color isPrimaryInverse() {
    if (provdTheme.themeMode == ThemeMode.dark) {
      return targetDetailColor.primary;
    } else {
      return targetDetailColor.secondary;
    }
  }

  Color isBackground() {
    if (provdTheme.themeMode == ThemeMode.dark) {
      return targetDetailColor.backgroundDark;
    } else {
      return targetDetailColor.backgroundLight;
    }
  }

  Color isBackgroundInverse() {
    if (provdTheme.themeMode == ThemeMode.dark) {
      return targetDetailColor.backgroundLight;
    } else {
      return targetDetailColor.backgroundDark;
    }
  }

  Color isPureBg() {
    if (provdTheme.themeMode == ThemeMode.dark) {
      return targetDetailColor.pureDark;
    } else {
      return targetDetailColor.pureWhite;
    }
  }
  }

//   bool isAndroid() {
//     return GetPlatform.isAndroid;
//   }

//   bool isWeb() {
//     if (MediaQuery.of(this).size.width < MediaQuery.of(this).size.height) {
//       return false;
//     } else {
//       return true;
//     }
//     // return GetPlatform.isWeb || GetPlatform.isWindows;
//   }

//   bool isWindows() {
//     return GetPlatform.isWindows;
//   }

//   bool isIOS() {
//     return GetPlatform.isIOS;
//   }
// }

// String getFormatedDate(String date) {
//   DateTime parseDate = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(date);
//   DateTime inputDate = DateTime.parse(parseDate.toString());
//   String outputDate = DateFormat('dd MMM yy').format(inputDate);
//   return outputDate;
// }

// String getFormatedDateNew(String date) {
//   DateTime parseDate = DateFormat("MM/DD/yyyy HH:mm:ss").parse(date);
//   DateTime inputDate = DateTime.parse(parseDate.toString());
//   String outputDate = DateFormat('dd MMM, yyyy').format(inputDate);
//   return outputDate;
// }

// String getFormatedMonthYear(String date) {
//   DateTime parseDate = DateFormat("yyyy-MM-dd HH:mm:ss").parse(date);
//   DateTime inputDate = DateTime.parse(parseDate.toString());
//   String outputDate = DateFormat('MMM yyyy').format(inputDate);
//   return outputDate;
// }

// String getFormatedDateTime(String date) {
//   DateTime parseDate = DateFormat("MM/DD/yyyy HH:mm:ss").parse(date);
//   DateTime inputDate = DateTime.parse(parseDate.toString());
//   String outputDate = DateFormat('dd MMM, yyyy hh:mm a').format(inputDate);
//   return outputDate;
// }

// String getFormatedTimeUsingDate(String date) {
//   DateTime parseDate = DateFormat("MM/DD/yyyy HH:mm:ss").parse(date);
//   DateTime inputDate = DateTime.parse(parseDate.toString());
//   String outputDate = DateFormat('hh:mm a').format(inputDate);
//   return outputDate;
// }

// String getFormatedTime(String date) {
//   DateTime parseDate = DateFormat("HH:mm").parse(date);
//   DateTime inputDate = DateTime.parse(parseDate.toString());
//   String outputDate = DateFormat('hh:mm a').format(inputDate);
//   return outputDate;
// }

// String getFormatedDateNoTime(String date) {
//   DateTime parseDate = DateFormat("yyyy-MM-dd").parse(date);
//   DateTime inputDate = DateTime.parse(parseDate.toString());
//   String outputDate = DateFormat('dd MMM yy').format(inputDate);
//   return outputDate;
// }

// String getFormatedMoney(money) {
//   String outputMoney = NumberFormat('#,##0', 'en_US').format(money);
//   return outputMoney;
// }

// Widget dividerCommonNew() {
//   return Consumer<ThemeProvider>(
//       builder: (context, theme, child) => Divider(
//           color: !theme.themeSys
//               ? targetDetailColor.backgroundLight.withOpacity(.25)
//               : targetDetailColor.backgroundDark.withOpacity(.25),
//           thickness: 0.8));
// }

// bool isWeb() {
//   return GetPlatform.isWeb || GetPlatform.isWindows;
// }
