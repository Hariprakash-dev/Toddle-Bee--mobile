import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toddle_bee_app/Colors/colors.dart';
import 'package:toddle_bee_app/Screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  late TextEditingController namecontroller;
  late TextEditingController phnocontroller;
  late TextEditingController passwcontroller;
  late TextEditingController confirmcontroller;

  late FocusNode _focusnode1;
  late FocusNode _focusnode2;
  late FocusNode _focusnode3;
  late FocusNode _focusnode4;
  @override
  void initState() {
     super.initState();
    _focusnode1 = FocusNode();
    _focusnode2 = FocusNode();
    _focusnode3 = FocusNode();
    _focusnode4 = FocusNode();

    namecontroller = TextEditingController();
    passwcontroller = TextEditingController();
    phnocontroller = TextEditingController();
    confirmcontroller = TextEditingController();

   
  }

  @override
  void dispose() {
    _focusnode1.dispose();
    _focusnode2.dispose();
    _focusnode3.dispose();
    _focusnode4.dispose();

    namecontroller.dispose();
    phnocontroller.dispose();
    passwcontroller.dispose();
    confirmcontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Container(
                  height: 98,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          bottomRight: Radius.circular(22)),
                      color: AppColors.appbar),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 35,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Register",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
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
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp("[A-Z,a-z]"))
                            ],
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "empty";
                              }

                              return null;
                            },
                            controller: namecontroller,
                            decoration: const InputDecoration(
                                hintText: '        Name',
                                hintStyle: TextStyle(
                                    color: Colors.black38,
                                    fontWeight: FontWeight.w500),
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
                            controller: phnocontroller,
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
                            focusNode: _focusnode3,
                            controller: passwcontroller,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp("[A-z,a-z,0-9,@,_]")),
                              LengthLimitingTextInputFormatter(12)
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
                        height: 15,
                      ),
                      Row(children: [
                        Expanded(
                          child: TextFormField(
                            focusNode: _focusnode4,
                            controller: confirmcontroller,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp("[A-z,a-z,0-9,@,_]")),
                              LengthLimitingTextInputFormatter(12)
                            ],
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "empty";
                              }
                              if (val != passwcontroller.text) {
                                return "Not Match";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: 'Confirm Password',
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
                        height: 15,
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
                                              const LoginScreen()));
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
                                " Sign up",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(255, 255, 255, 1)),
                              ))),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account ?",
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
                                          const LoginScreen()));
                            },
                            child: const Text(" Login",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(242, 141, 30, 1))),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
