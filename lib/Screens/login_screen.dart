import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toddle_bee_app/Colors/colors.dart';
import 'package:toddle_bee_app/Screens/sign_up_screen.dart';
import 'package:toddle_bee_app/Widgets/bottom_nav.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController phno;
  late TextEditingController passw;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  late FocusNode _focusnode1;
  late FocusNode _focusnode2;
  @override
  void initState() {
    super.initState();
    phno = TextEditingController();
    passw = TextEditingController();
    _focusnode1 = FocusNode();
    _focusnode2 = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    phno.dispose();
    passw.dispose();
    _focusnode1.dispose();
    _focusnode2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.backgroundColor,
        body: Form(
          key: formkey,
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(22),
                        bottomRight: Radius.circular(22)),
                    color: AppColors.appbar),
                child: const Row(
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 35,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Welcome Back !",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          "Log in to your account",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(185, 185, 185, 1)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(children: [
                      Expanded(
                        child: TextFormField(
                          focusNode: _focusnode1,
                          controller: phno,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp("[0-9,+,-]")),
                            LengthLimitingTextInputFormatter(12)
                          ],
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "empty";
                            }

                            return null;
                          },
                          decoration: const InputDecoration(
                              hintText: 'Enter Phone Number',
                              hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),
                              prefixIcon:
                                  Icon(Icons.phone, color: Colors.black38),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              )),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(children: [
                      Expanded(
                        child: TextFormField(
                          focusNode: _focusnode2,
                          controller: passw,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[A-Z,a-z,0-9,@,_]'))
                          ],
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "empty";
                            }

                            return null;
                          },
                          decoration: const InputDecoration(
                              hintText: 'Enter Password',
                              hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),
                              prefixIcon:
                                  Icon(Icons.lock, color: Colors.black38),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              )),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forget Password ?",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(242, 141, 30, 1)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: TextButton(
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MainScreen()));
                              }
                            },
                            style: const ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                    Color.fromRGBO(242, 141, 30, 1)),
                                shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7))))),
                            child: const Text(
                              "Log In",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                            ))),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Color.fromRGBO(165, 167, 169, 1),
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            "or",
                            style: TextStyle(
                                color: Color.fromRGBO(165, 167, 169, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Color.fromRGBO(165, 167, 169, 1),
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: TextButton(
                            onPressed: null,
                            style: const ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                    Color.fromRGBO(255, 255, 255, 1)),
                                shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color.fromRGBO(
                                                233, 233, 233, 1)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7))))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/google.png",
                                  height: 26,
                                  width: 26,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  "Continue with Google",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(0, 0, 0, 1)),
                                ),
                              ],
                            ))),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: TextButton(
                            onPressed: null,
                            style: const ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                    Color.fromRGBO(255, 255, 255, 1)),
                                shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color.fromRGBO(
                                                233, 233, 233, 1)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7))))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/apple.png",
                                  height: 26,
                                  width: 26,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  "Continue with Apple",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(0, 0, 0, 1)),
                                ),
                              ],
                            ))),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don’t have an account ? ",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(165, 167, 169, 1)),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpScreen()));
                          },
                          child: const Text("Sign Up",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(242, 141, 30, 1))),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
