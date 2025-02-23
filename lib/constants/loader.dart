import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toddle_bee_app/cofig/enums.dart';

import '../../provider/theme_provider.dart';

loader35({color}) => SizedBox(
    height: 35,
    width: 35,
    child: CircularProgressIndicator(
        strokeWidth: 2, color: color ?? targetDetailColor.primary));
loader45() => SizedBox(
    height: 45,
    width: 45,
    child: CircularProgressIndicator(
        strokeWidth: 2, color: targetDetailColor.primary));

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay(
      {super.key, required this.isLoading, required this.child});
  final bool isLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Stack(children: [
            child,
            Scaffold(
                backgroundColor: targetDetailColor.pureDark.withOpacity(.25),
                body: Center(
                  child: Container(
                      alignment: Alignment.center,
                      height: 62,
                      width: 62,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const CircularProgressIndicator()),
                ))
          ])
        : child;
  }
}
// loaderDot({double size = 50}) =>
//     SpinKitThreeBounce(color: targetDetailColor.pureDark, size: size);

loaderLinear() =>
    LinearProgressIndicator(minHeight: 2.5, color: targetDetailColor.primary);

dividerCommon() => Consumer<ThemeProvider>(
    builder: (context, theme, child) => Divider(
        color: !theme.themeSys
            ? targetDetailColor.backgroundLight
            : targetDetailColor.backgroundDark,
        thickness: 1));
