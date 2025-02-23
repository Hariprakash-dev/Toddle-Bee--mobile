import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:toddle_bee_app/Provider/theme_provider.dart';
import 'package:toddle_bee_app/Utils/context.dart';
import 'package:toddle_bee_app/cofig/enums.dart';


notif(String head, String desc) => Get.snackbar(head, desc,
    margin: EdgeInsets.only(
        left:
            Get.context!.isMobileBool() ? 8 : (Get.context!.widthFull() - 352),
        top: 8,
        right: 8),
    maxWidth: Get.context!.isMobile(360),
    colorText: targetDetailColor.pureWhite,
    backgroundColor: targetDetailColor.pureDark,
    duration: const Duration(seconds: 2),
    dismissDirection: DismissDirection.horizontal,
    animationDuration: const Duration(milliseconds: 600));

errorMessage(String head, String desc) {
  return showOverlayNotification((context) {
    return AllNotifications(
      message: desc,
      color: Colors.red,
      icon: Icons.error,
      head: head,
      onReply: () => OverlaySupportEntry.of(context)?.dismiss(),
    );
  });
}

successMessage(String desc) {
  return showOverlayNotification(duration: const Duration(seconds: 2),
      (context) {
    return AllNotifications(
      message: desc,
      color: provdTheme.themeSys
          ? targetDetailColor.pureWhite
          : targetDetailColor.pureDark,
      icon: Icons.done,
      head: "Success",
      onReply: () => OverlaySupportEntry.of(context)?.dismiss(),
    );
  });
}

failMessage(String desc) {
  return showOverlayNotification((context) {
    return AllNotifications(
      message: desc,
      color: provdTheme.themeSys
          ? targetDetailColor.pureWhite
          : targetDetailColor.pureDark,
      icon: Icons.warning,
      head: "Failed",
      onReply: () => OverlaySupportEntry.of(context)?.dismiss(),
    );
  });
}

class CustomAnimationToast extends StatelessWidget {
  final double value;

  static final Tween<Offset> tweenOffset =
      Tween<Offset>(begin: const Offset(0, 40), end: const Offset(0, 0));

  static final Tween<double> tweenOpacity = Tween<double>(begin: 0, end: 1);

  const CustomAnimationToast({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: tweenOffset.transform(value),
      child: Opacity(
        opacity: tweenOpacity.transform(value),
        child: const IosStyleToast(),
      ),
    );
  }
}

class IosStyleToast extends StatelessWidget {
  const IosStyleToast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTextStyle(
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.black87,
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    Text('Succeed')
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AllNotifications extends StatelessWidget {
  final VoidCallback onReply;
  final String message;
  final Color color;
  final IconData icon;
  final String head;
  const AllNotifications(
      {Key? key,
      required this.onReply,
      required this.message,
      required this.head,
      required this.color,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16))),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16))),
          tileColor: color,
         
          title: Text(head),
          subtitle: Text(message),
        ),
      ),
    );
  }
}
