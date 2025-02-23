import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toddle_bee_app/Colors/colors.dart';
import 'package:toddle_bee_app/Provider/all_provider.dart';
import 'package:toddle_bee_app/Provider/auth_provider.dart';
import 'package:toddle_bee_app/Screens/sign_up_screen.dart';
import 'package:toddle_bee_app/Service/notification.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController phno;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  late FocusNode _focusnode1;
  bool isOtpSent = false;

  @override
  void initState() {
    super.initState();
    phno = TextEditingController();
    _focusnode1 = FocusNode();
  }

  @override
  void dispose() {
    phno.dispose();
    _focusnode1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.backgroundColor,
      body: Form(
        key: formkey,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 50.0, left: 20, right: 20, bottom: 50),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "Welcome Back!",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const Row(
                children: [
                  Text(
                    "Log in to your account",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(height: 15),

              /// **Phone Number Field**
              TextFormField(
                focusNode: _focusnode1,
                controller: phno,
                validator: (val) => val!.isEmpty ? "Enter phone number" : null,
                decoration: const InputDecoration(
                  hintText: 'Enter Phone Number',
                  prefixIcon: Icon(Icons.phone, color: Colors.black38),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              /// **Send OTP Button**
              Consumer<AuthProvider>(
                builder: (context, value, child) => value.loadingAuth
                    ? CircularProgressIndicator()
                    : SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: TextButton(
                          onPressed: LogincheckApi,
                          
                          style: const ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.orange),
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(7))))),
                          child: const Text(
                            "Send OTP",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
              ),

              const SizedBox(
                height: 30,
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
                height: 30,
              ),
              SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                      onPressed: null,
                      style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                              Color.fromRGBO(255, 255, 255, 1)),
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Color.fromRGBO(233, 233, 233, 1)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7))))),
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
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Color.fromRGBO(233, 233, 233, 1)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7))))),
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
                height: 30,
              ),

              /// **Sign Up Navigation**
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don’t have an account? ",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                      );
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 14, color: Colors.orange),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  LogincheckApi() {
    if (phno.text.isEmpty) {
      return notif("Kindly", "Enter your mobile number");
    }
    provdAuth.logincheck(context, phno.text);
  }
}
