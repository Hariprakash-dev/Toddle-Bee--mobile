import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';



import 'package:toddle_bee_app/Provider/theme_provider.dart';
import 'package:toddle_bee_app/Utils/context.dart';
import 'package:toddle_bee_app/cofig/enums.dart';

Widget textCustom(String head,
    {color,
    double size = 12.0,
    underline,
    spacing,
    weight,
    height,
    overflow,
    lines}) {
  return Text(head,
      maxLines: lines,
      overflow: overflow,
      style: TextStyle(
          fontSize: size,
          fontWeight: weight ?? FontWeight.w500,
          letterSpacing: spacing ?? 0,
          decoration: underline ?? TextDecoration.none,
          color: color ?? targetDetailColor.pureDark,
          height: height ?? 0));
}

Widget textW200(String head, {double size = 8.0, color}) => Text(head,
    style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w200,
        color: color,
        height: 1.5));
Widget textW400(String head,
        {double size = 10.0,
        color,
        align,
        overflow,
        underline,
        lines,
        decorationcolor,
        double height = 1.35,
        decorationthickness}) =>
    Text(head,
        textAlign: align,
        maxLines: lines,
        style: TextStyle(
            fontSize: size,
            fontWeight: FontWeight.w400,
            color: color,
            height: height,
            decoration: underline,
            decorationColor: decorationcolor,
            decorationThickness: decorationthickness));
Widget textW500(String head,
        {double size = 12.0,
        color,
        align,
        overflow,
        underline,
        lines,
        decorationcolor,
        double height = 1.35,
        decorationthickness}) =>
    Text(head,
        textAlign: align,
        style: TextStyle(
            fontSize: size,
            fontWeight: FontWeight.w500,
            color: color,
            height: height,
            decoration: underline,
            decorationColor: decorationcolor,
            decorationThickness: decorationthickness),
        maxLines: lines,
        overflow: overflow);
Widget textW600(String head,
        {double size = 14.0, color, lines, align, underline, height}) =>
    Text(head,
        style: TextStyle(
            fontSize: size,
            fontWeight: FontWeight.w600,
            color: color,
            decoration: underline,
            height: height ?? 1.35),
        maxLines: lines,
        textAlign: align,
        overflow: lines != null ? TextOverflow.ellipsis : null);
Widget textW600Price(String head,
        {double size = 14.0, color, lines, align, underline, height, weight}) =>
    Text(head,
        style: GoogleFonts.inter(
            fontSize: size,
            fontWeight: weight ?? FontWeight.w600,
            color: color,
            decoration: underline,
            height: height ?? 1.35),
        maxLines: lines,
        textAlign: align,
        overflow: lines != null ? TextOverflow.ellipsis : null);
Widget textW500Price(String head,
        {double size = 14.0, color, lines, align, underline, height, weight}) =>
    Text(head,
        style: GoogleFonts.inter(
            fontSize: size,
            fontWeight: weight ?? FontWeight.w500,
            color: color,
            decoration: underline,
            height: height ?? 1.35),
        maxLines: lines,
        textAlign: align,
        overflow: lines != null ? TextOverflow.ellipsis : null);
Widget textW700(String head,
        {double size = 20.0,
        color,
        lines,
        height,
        spacer,
        underline,
        overflow}) =>
    Text(head,
        style: TextStyle(
            letterSpacing: spacer,
            fontSize: size,
            fontWeight: FontWeight.w700,
            color: color,
            decoration: underline,
            height: height ?? 1.35),
        maxLines: lines,
        overflow: overflow ?? TextOverflow.ellipsis);
Text textH1(String head) => Text(head,
    style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w800));
Widget textH2(String head, {color}) =>
    Consumer<ThemeProvider>(builder: (context, theme, child) {
      return Text(head,
          style: TextStyle(
              fontSize: context.heightFull() / 33,
              fontWeight: FontWeight.w700,
              color: !theme.themeSys
                  ? color ?? targetDetailColor.backgroundLight
                  : color ?? targetDetailColor.backgroundDark));
    });
Widget textH3(String head, {color}) =>
    Consumer<ThemeProvider>(builder: (context, theme, child) {
      return Text(head,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: !theme.themeSys
                  ? color ?? targetDetailColor.backgroundLight
                  : color ?? targetDetailColor.backgroundDark));
    });
Widget textSH1(String head, {color, align}) => Consumer<ThemeProvider>(
    builder: (context, theme, child) => Text(head,
        textAlign: align ?? TextAlign.start,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: !theme.themeSys
                ? color ?? targetDetailColor.pureWhite
                : color ?? targetDetailColor.pureDark)));
Text textSH1Colored(String head, Color color) => Text(head,
    style: TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.w600));
Widget textNR1(String head, {size, align, color, weight}) =>
    Consumer<ThemeProvider>(
        builder: (context, theme, child) => Text(head,
            textAlign: align ?? TextAlign.start,
            style: TextStyle(
                fontSize: size ?? 14,
                fontWeight: weight ?? FontWeight.w400,
                color: !theme.themeSys
                    ? color ?? targetDetailColor.pureWhite
                    : color ?? targetDetailColor.pureDark)));
Widget textNAV(String head, {size, align, color}) => Consumer<ThemeProvider>(
    builder: (context, theme, child) => Text(head,
        textAlign: align ?? TextAlign.start,
        style: TextStyle(
            fontSize: size ?? 16,
            fontWeight: FontWeight.w600,
            color: !theme.themeSys
                ? color ?? targetDetailColor.pureWhite.withOpacity(.8)
                : color ?? targetDetailColor.pureDark.withOpacity(.8))));
Text textDC1(String head, {max, overflow}) => Text(head,
    maxLines: max ?? 1,
    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w300));
Text textDC1Colored(String head, Color color, {weight}) => Text(head,
    style: GoogleFonts.poppins(
        color: color, fontSize: 12, fontWeight: weight ?? FontWeight.w300));
Text textGray(String head) => Text(head,
    style: GoogleFonts.poppins(
        fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey));

Text textList(String head, {size}) => Text(head,
    maxLines: 3,
    overflow: TextOverflow.ellipsis,
    style: GoogleFonts.poppins(
        fontSize: size ?? 14, fontWeight: FontWeight.w400, color: Colors.grey));

Text textMSG(String head) => Text(head,
    style: GoogleFonts.poppins(
        fontSize: 14, fontWeight: FontWeight.w400, height: 1.2));
Text textMoney1(String head, double size) => Text('\u20b9 $head',
    style: GoogleFonts.poppins(
      fontSize: size,
      fontWeight: FontWeight.w600,
    ));
Text textButton(String head, {color, size, weight}) => Text(head,
    style: GoogleFonts.poppins(
        fontSize: size ?? 18,
        fontWeight: weight ?? FontWeight.w500,
        color: color ?? targetDetailColor.pureWhite,
        letterSpacing: 1));

TextStyle textStyleForm(Color color) => GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.45,
    color: color,
    height: 1);
TextStyle textBottomNav(Color color) => GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.45,
    color: color,
    height: 1.5);
