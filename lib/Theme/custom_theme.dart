import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:toddle_bee_app/Provider/theme_provider.dart';
import 'package:toddle_bee_app/Theme/theme_guide.dart';
import 'package:toddle_bee_app/cofig/enums.dart';
import 'package:toddle_bee_app/constants/fonts.dart';
import 'package:toddle_bee_app/constants/gaps.dart';

buttonPrimary(
        BuildContext context, String buttonName, VoidCallback voidCallback,
        {width, height, border, radius, color, txtcolor, txtsize}) =>
    Consumer<ThemeProvider>(builder: (_, provider, __) {
      return Container(
        height: height ?? 48,
        width: width,
        decoration: BoxDecoration(
          color: color ?? targetDetailColor.primary,
          border: border,
          borderRadius: radius ?? const BorderRadius.all(Radius.circular(4)),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: targetDetailColor.pureWhite,
              onTap: voidCallback,
              child: Center(
                child: textW500(buttonName,
                    color: txtcolor ?? targetDetailColor.pureWhite,
                    size: txtsize ?? 16),
              )),
        ),
      );
    });

buttonSmallWithIcon(
        BuildContext context, String buttonName, VoidCallback voidCallback,
        {width, height, border, radius, color, txtcolor, txtsize, icon}) =>
    Consumer<ThemeProvider>(builder: (_, provider, __) {
      return Container(
        height: height ?? 48,
        width: width,
        decoration: BoxDecoration(
          color: color ?? targetDetailColor.primary,
          border: border,
          borderRadius: radius ?? const BorderRadius.all(Radius.circular(6)),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              highlightColor: targetDetailColor.primary,
              splashColor: targetDetailColor.pureWhite,
              splashFactory: NoSplash.splashFactory,
              onTap: voidCallback,
              child: Center(
                  child: Row(
                children: [
                  Icon(
                    icon,
                    color: targetDetailColor.pureWhite,
                    size: 20,
                  ),
                  wgap2(),
                  Text(buttonName,
                      style: GoogleFonts.poppins(
                          fontSize: txtsize ?? 18,
                          fontWeight: FontWeight.w500,
                          color: txtcolor ?? targetDetailColor.pureWhite)),
                ],
              ))),
        ),
      );
    });
buttonDialog(BuildContext context, String buttonName, VoidCallback voidCallback,
        {isMuted = false}) =>
    Consumer<ThemeProvider>(builder: (_, provider, __) {
      return Expanded(
        child: Container(
          height: 45,
          // margin: const EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            // boxShadow: [boxShadowCustom()],
            color: isMuted
                ? const Color.fromARGB(31, 97, 105, 219)
                : targetDetailColor.primary,
            borderRadius: ThemeGuide.bRadAll,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                highlightColor: provider.themeMode == ThemeMode.light
                    ? targetDetailColor.backgroundDark
                    : targetDetailColor.backgroundLight,
                splashColor: targetDetailColor.pureWhite,
                onTap: voidCallback,
                child: Center(
                    child: textButton(buttonName,
                        color: isMuted ? targetDetailColor.primary : null))),
          ),
        ),
      );
    });
