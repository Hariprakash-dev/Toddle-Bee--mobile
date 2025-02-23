import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import 'package:toddle_bee_app/Provider/auth_provider.dart';
import 'package:toddle_bee_app/Theme/custom_theme.dart';
import 'package:toddle_bee_app/Utils/context.dart';
import 'package:toddle_bee_app/cofig/enums.dart';
import 'package:toddle_bee_app/constants/fonts.dart';
import 'package:toddle_bee_app/constants/gaps.dart';
import 'package:toddle_bee_app/constants/loader.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen(
      {super.key,
      required this.mobile,
      required this.isLogin,
      required this.name,
      required this.email,
      required this.pass});
  final String mobile;
  final bool? isLogin;
  final String name, email, pass;

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController otpController = TextEditingController();
  int seconds = 0;
  int resendTaps = 0;
  bool isResendButtonEnabled = true;

  void decrement() {
    seconds = 30;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds == 0) {
        timer.cancel();
      } else {
        try {
          setState(() {
            seconds--;
          });
          // ignore: empty_catches
        } catch (e) {}
      }
    });
    if (seconds == 0) {
      isResendButtonEnabled = true;
      resendTaps = 0;
    }
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      decrement();
      otpController = TextEditingController();
    });
    super.initState();
  }

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provdAuth = Provider.of<AuthProvider>(context, listen: false);

    bool isKeyBoardOpened = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
        backgroundColor: targetDetailColor.primary,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    height: isKeyBoardOpened
                        ? context.heightHalf() -
                            100 -
                            MediaQuery.of(context).viewInsets.bottom
                        : context.heightFull() - 420,
                    width: context.widthFull(),
                    decoration: BoxDecoration(
                        color: targetDetailColor.primary,
                        borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(50))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Image.asset("assets/icons/login_rec 1.png")
                      ],
                    ),
                  ),
                  isKeyBoardOpened
                      ? const SizedBox(height: 100)
                      : const SizedBox.shrink(),
                  Column(
                    children: [
                      Container(
                        width: context.widthFull(),
                        height: context.heightFull() - 350,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(50),
                                topLeft: Radius.circular(50)),
                            color: targetDetailColor.pureWhite),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                // child: Image.asset(
                                //   "assets/images/Logofull copy 1.png",
                                //   height: 60,
                                //   width: 230,
                                // ),
                                ),
                            hgap36px(),
                            textW500("Verification code", size: 20),
                            hgap6px(),
                            textW500(
                                "Please enter verification code\nSend your mobile",
                                color: targetDetailColor.grey,
                                height: 1.5),
                            Center(
                                child: OtpCustom(
                              pinController: otpController,
                              isMobile: true,
                              complete: (value) {
                                logger.i(value);
                                // widget.name == "" ? login() : login();
                              },
                            )),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        if (isResendButtonEnabled &&
                                            resendTaps < 3) {
                                          decrement();
                                          widget.name == ""
                                              ? provdAuth.logincheck(
                                                  context, widget.mobile)
                                              : provdAuth.logincheck(
                                                  context, widget.mobile);

                                          // : provdAuth.registerCheck(

                                          //     widget.name,
                                          //     widget.email,
                                          //     widget.mobile,
                                          //     widget.pass,
                                          //     );
                                          resendTaps++;
                                          if (resendTaps >= 3) {
                                            isResendButtonEnabled = false;
                                          }
                                        }
                                      },
                                      child: textW500(
                                          seconds == 0
                                              ? "Resend OTP"
                                              : seconds.isLowerThan(10)
                                                  ? '00:0$seconds'
                                                  : '00:$seconds',
                                          color: isResendButtonEnabled
                                              ? targetDetailColor.primary
                                              : Colors.red))
                                ]),
                            hgap32px(),
                            Consumer<AuthProvider>(
                              builder: (context, value, child) {
                                final provdAuth = Provider.of<AuthProvider>(
                                    context,
                                    listen: false);

                                return value.loadingAuth
                                    ? Center(child: loader35())
                                    : buttonPrimary(
                                        context,
                                        "Verify",
                                        () {
                                          
                                          if (widget.name == "") {
                                            login(provdAuth);
                                          } else {
                                            login(provdAuth);
                                          }
                                        },
                                        color: targetDetailColor.secondary,
                                      );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }

  // register() {
  //   provdAuth.register(widget.name, widget.email, widget.mobile, widget.pass,
  //       otpController.text);
  // }

  login(AuthProvider provdAuth) {
    provdAuth.login(context, widget.mobile, otpController.text);
  }
}

class OtpCustom extends StatelessWidget {
  const OtpCustom(
      {super.key,
      required this.pinController,
      required this.isMobile,
      required this.complete});
  final TextEditingController pinController;
  final bool isMobile;
  final Function(String)? complete;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
        width: 56,
        height: 56,
        textStyle: GoogleFonts.poppins(
            fontSize: 22, color: const Color.fromRGBO(30, 60, 87, 1)),
        decoration: const BoxDecoration());

    final cursor = Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Container(
          width: 56,
          height: 3,
          decoration: BoxDecoration(
              color: targetDetailColor.primary,
              borderRadius: BorderRadius.circular(8)))
    ]);
    final preFilledWidget =
        Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Container(
          width: 56,
          height: 3,
          decoration: BoxDecoration(
              color: targetDetailColor.grey,
              borderRadius: BorderRadius.circular(8)))
    ]);

    final webPinTheme = PinTheme(
        width: 60,
        margin: const EdgeInsets.only(right: 20),
        height: 60,
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        decoration: BoxDecoration(
            color: targetDetailColor.grey,
            border: Border.all(color: targetDetailColor.primary),
            borderRadius: BorderRadius.circular(50)));
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Pinput(
            length: 4,
            autofocus: true,
            keyboardType: TextInputType.number,
            controller: pinController,
            mainAxisAlignment: MainAxisAlignment.center,
            defaultPinTheme: isMobile ? defaultPinTheme : webPinTheme,
            textInputAction: TextInputAction.next,
            showCursor: true,
            cursor: isMobile ? cursor : null,
            preFilledWidget: isMobile ? preFilledWidget : null,
            validator: (s) {
              return null;
            },
            onCompleted: complete));
  }
}
