// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:toddle_bee_app/Colors/colors.dart';
// import 'package:toddle_bee_app/Screens/sign_up_screen.dart';
// import 'package:http/http.dart' as http;
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {

//   late TextEditingController phno;
//   late TextEditingController passw;
//   final GlobalKey<FormState> formkey = GlobalKey<FormState>();
//   late FocusNode _focusnode1;
//   late FocusNode _focusnode2;
//   @override
//   void initState() {
//     super.initState();
//     phno = TextEditingController();
//     passw = TextEditingController();
//     _focusnode1 = FocusNode();
//     _focusnode2 = FocusNode();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     phno.dispose();
//     passw.dispose();
//     _focusnode1.dispose();
//     _focusnode2.dispose();
//   }

//   Future<void> getOtp(String username) async {
//   final url = Uri.parse('https://toddlebee.com/api/auth/login_check');

//   try {
//     final response = await http.post(
//       url,
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode({'username': username}),
//     );

//     if (response.statusCode == 200) {
//       print('Response: ${response.body}'); // Print full response
//       var data = jsonDecode(response.body);

//       if (data.containsKey('otp')) {
//         print('OTP: ${data['otp']}'); // If OTP is included in the response
//       } else {
//         print('OTP is sent to your registered contact.');
//       }
//     } else {
//       print('Error: ${response.body}');
//     }
//   } catch (e) {
//     print('Exception: $e');
//   }
// }

// Future<void> verifyOtp(String username, String otp) async {
//   final url = Uri.parse('https://toddlebee.com/api/auth/login');

//   try {
//     final response = await http.post(
//       url,
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode({'username': username, 'otp': otp}),
//     );

//     if (response.statusCode == 200) {
//       print('Login Successful');
//     } else {
//       print('Invalid OTP: ${response.body}');
//     }
//   } catch (e) {
//     print('Exception: $e');
//   }
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: AppColors.backgroundColor,
//         body: Form(
//           key: formkey,
//           child: Column(
//             children: [
//               Container(
//                 height: 100,
//                 decoration: BoxDecoration(
//                     borderRadius: const BorderRadius.only(
//                         bottomLeft: Radius.circular(22),
//                         bottomRight: Radius.circular(22)),
//                     color: AppColors.appbar),
//                 child: const Row(
//                   children: [
//                     IconButton(
//                         onPressed: null,
//                         icon: Icon(
//                           Icons.arrow_back,
//                           color: Colors.white,
//                           size: 35,
//                         )),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   children: [
//                     const Row(
//                       children: [
//                         Text(
//                           "Welcome Back !",
//                           style: TextStyle(
//                               fontSize: 22, fontWeight: FontWeight.w500),
//                         )
//                       ],
//                     ),
//                     const Row(
//                       children: [
//                         Text(
//                           "Log in to your account",
//                           style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w400,
//                               color: Color.fromRGBO(185, 185, 185, 1)),
//                         )
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 15,
//                     ),
//                     Row(children: [
//                       Expanded(
//                         child: TextFormField(
//                           focusNode: _focusnode1,
//                           controller: phno,
//                           // inputFormatters: [
//                           //   FilteringTextInputFormatter.allow(
//                           //       RegExp("[0-9,+,-]")),
//                           //   LengthLimitingTextInputFormatter(12)
//                           // ],
//                           validator: (val) {
//                             if (val!.isEmpty) {
//                               return "empty";
//                             }

//                             return null;
//                           },
//                           decoration: const InputDecoration(
//                               hintText: 'Enter Phone Number',
//                               hintStyle: TextStyle(
//                                   color: Colors.black38,
//                                   fontWeight: FontWeight.w500),
//                               prefixIcon:
//                                   Icon(Icons.phone, color: Colors.black38),
//                               border: OutlineInputBorder(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(8)),
//                               )),
//                         ),
//                       ),
//                     ]),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     SizedBox(
//                         height: 50,
//                         width: MediaQuery.of(context).size.width,
//                         child: TextButton(
//                             onPressed: () {},
//                             style: const ButtonStyle(
//                                 backgroundColor: WidgetStatePropertyAll(
//                                     Color.fromRGBO(242, 141, 30, 1)),
//                                 shape: WidgetStatePropertyAll(
//                                     RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(7))))),
//                             child: const Text(
//                               "Send otp",
//                               style: TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w600,
//                                   color: Color.fromRGBO(255, 255, 255, 1)),
//                             ))),
//                     const SizedBox(
//                       height: 15,
//                     ),
//                     Row(children: [
//                       Expanded(
//                         child: TextFormField(
//                           focusNode: _focusnode2,
//                           controller: passw,
//                           // inputFormatters: [
//                           //   FilteringTextInputFormatter.allow(
//                           //       RegExp('[A-Z,a-z,0-9,@,_]'))
//                           // ],
//                           validator: (val) {
//                             if (val!.isEmpty) {
//                               return "empty";
//                             }

//                             return null;
//                           },
//                           decoration: const InputDecoration(
//                               hintText: 'Enter Password',
//                               hintStyle: TextStyle(
//                                   color: Colors.black38,
//                                   fontWeight: FontWeight.w500),
//                               prefixIcon:
//                                   Icon(Icons.lock, color: Colors.black38),
//                               border: OutlineInputBorder(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(8)),
//                               )),
//                         ),
//                       ),
//                     ]),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     const Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Text(
//                           "Forget Password ?",
//                           style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w400,
//                               color: Color.fromRGBO(242, 141, 30, 1)),
//                         )
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     SizedBox(
//                         height: 50,
//                         width: MediaQuery.of(context).size.width,
//                         child: TextButton(
//                             onPressed: () {
//                               // if (formkey.currentState!.validate()) {
//                               // Navigator.push(
//                               //     context,
//                               //     MaterialPageRoute(
//                               //         builder: (context) =>
//                               //             const MainScreen()));
//                               // }

//                             },
//                             style: const ButtonStyle(
//                                 backgroundColor: WidgetStatePropertyAll(
//                                     Color.fromRGBO(242, 141, 30, 1)),
//                                 shape: WidgetStatePropertyAll(
//                                     RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(7))))),
//                             child: const Text(
//                               "Log In",
//                               style: TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w600,
//                                   color: Color.fromRGBO(255, 255, 255, 1)),
//                             ))),
//                     const SizedBox(
//                       height: 15,
//                     ),
//                     const Row(
//                       children: [
//                         Expanded(
//                           child: Divider(
//                             color: Color.fromRGBO(165, 167, 169, 1),
//                             thickness: 1,
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8),
//                           child: Text(
//                             "or",
//                             style: TextStyle(
//                                 color: Color.fromRGBO(165, 167, 169, 1),
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w400),
//                           ),
//                         ),
//                         Expanded(
//                           child: Divider(
//                             color: Color.fromRGBO(165, 167, 169, 1),
//                             thickness: 1,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 15,
//                     ),
//                     SizedBox(
//                         height: 50,
//                         width: MediaQuery.of(context).size.width,
//                         child: TextButton(
//                             onPressed: null,
//                             style: const ButtonStyle(
//                                 backgroundColor: WidgetStatePropertyAll(
//                                     Color.fromRGBO(255, 255, 255, 1)),
//                                 shape: WidgetStatePropertyAll(
//                                     RoundedRectangleBorder(
//                                         side: BorderSide(
//                                             color: Color.fromRGBO(
//                                                 233, 233, 233, 1)),
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(7))))),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Image.asset(
//                                   "assets/google.png",
//                                   height: 26,
//                                   width: 26,
//                                 ),
//                                 const SizedBox(
//                                   width: 15,
//                                 ),
//                                 const Text(
//                                   "Continue with Google",
//                                   style: TextStyle(
//                                       fontSize: 14,
//                                       color: Color.fromRGBO(0, 0, 0, 1)),
//                                 ),
//                               ],
//                             ))),
//                     const SizedBox(
//                       height: 15,
//                     ),
//                     SizedBox(
//                         height: 50,
//                         width: MediaQuery.of(context).size.width,
//                         child: TextButton(
//                             onPressed: null,
//                             style: const ButtonStyle(
//                                 backgroundColor: WidgetStatePropertyAll(
//                                     Color.fromRGBO(255, 255, 255, 1)),
//                                 shape: WidgetStatePropertyAll(
//                                     RoundedRectangleBorder(
//                                         side: BorderSide(
//                                             color: Color.fromRGBO(
//                                                 233, 233, 233, 1)),
//                                         borderRadius: BorderRadius.all(
//                                             Radius.circular(7))))),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Image.asset(
//                                   "assets/apple.png",
//                                   height: 26,
//                                   width: 26,
//                                 ),
//                                 const SizedBox(
//                                   width: 15,
//                                 ),
//                                 const Text(
//                                   "Continue with Apple",
//                                   style: TextStyle(
//                                       fontSize: 14,
//                                       color: Color.fromRGBO(0, 0, 0, 1)),
//                                 ),
//                               ],
//                             ))),
//                     const SizedBox(
//                       height: 12,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Text(
//                           "Don’t have an account ? ",
//                           style: TextStyle(
//                               fontSize: 14,
//                               color: Color.fromRGBO(165, 167, 169, 1)),
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>
//                                         const SignUpScreen()));
//                           },
//                           child: const Text("Sign Up",
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   color: Color.fromRGBO(242, 141, 30, 1))),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ));
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:toddle_bee_app/Colors/colors.dart';
import 'package:toddle_bee_app/Screens/sign_up_screen.dart';
import 'package:http/http.dart' as http;
import 'package:toddle_bee_app/Widgets/bottom_nav.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController phno;
  late TextEditingController otpController;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  late FocusNode _focusnode1;
  late FocusNode _focusnode2;
  bool isOtpSent = false;

  @override
  void initState() {
    super.initState();
    phno = TextEditingController();
    otpController = TextEditingController();
    _focusnode1 = FocusNode();
    _focusnode2 = FocusNode();
  }

  @override
  void dispose() {
    phno.dispose();
    otpController.dispose();
    _focusnode1.dispose();
    _focusnode2.dispose();
    super.dispose();
  }

  /// Function to request OTP
  Future<void> getOtp() async {
    String username = phno.text.trim();
    if (username.isEmpty) {
      showSnackbar("Please enter your phone number.");
      return;
    }

    final url = Uri.parse(
        'https://toddlebee.com/api/auth/login_check?username=$username');

    try {
      final response =
          await http.get(url, headers: {'Content-Type': 'application/json'});

      // print("🔹 Full API Response: ${response.body}");

      var data = jsonDecode(response.body);

      if (data is Map && data.containsKey('message')) {
        String message = data['message'];

        // Extract OTP using regex (matches the last 4 digits)
        RegExp otpRegex = RegExp(r'\d{4}');
        Match? match = otpRegex.firstMatch(message);

        if (match != null) {
          String otp = match.group(0)!; // Extracted OTP
          print(" OTP Extracted: $otp");

          //  Show OTP in Snackbar
          WidgetsBinding.instance.addPostFrameCallback((_) {
            showSnackbar("Your OTP is: $otp");
          });
          setState(() {
            isOtpSent = true;
          });
        } else {
          print(" No OTP found in message.");
          showSnackbar("You don't have an account,to click signup");
        }
      } else {
        print(" Unexpected API response format.");
        showSnackbar("Unexpected response format.");
      }
    } catch (e) {
      print(" Exception: $e");
      showSnackbar("Network error: $e");
    }
  }

  /// **Function to verify OTP**
  Future<void> verifyOtp() async {
    String username = phno.text.trim();
    String otp = otpController.text.trim();

    if (username.isEmpty || otp.isEmpty) {
      showSnackbar("Please enter OTP");
      return;
    }

    final url = Uri.parse(
        'https://toddlebee.com/api/auth/login?username=$username&otp=$otp');

    try {
      final response =
          await http.get(url, headers: {'Content-Type': 'application/json'});

      // print("Full API Response: ${response.body}"); //  Debugging

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        if (data['status'] == true) {
         
          showSnackbar("Login Successful!");

          // Navigate to next screen
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MainScreen()));
        } else {
          showSnackbar("Invalid OTP: ${data['message']}");
        }
      } else {
        showSnackbar("Error: ${response.body}");
      }
    } catch (e) {
      print("Exception: $e");
      showSnackbar("Network error: $e");
    }
  }

  /// **Function to show Snackbar messages**
  void showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.black87,
        duration: const Duration(seconds: 2),
      ),
    );
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
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  onPressed: getOtp,
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.orange),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7))))),
                  child: const Text(
                    "Send OTP",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),

              /// **OTP Field (Only Show if OTP is Sent)**
              // if (isOtpSent) ...[

              //   const SizedBox(height: 20),
              //   TextFormField(
              //     focusNode: _focusnode2,
              //     controller: otpController,
              //     validator: (val) => val!.isEmpty ? "Enter OTP" : null,
              //     decoration: const InputDecoration(
              //       hintText: 'Enter OTP',
              //       prefixIcon: Icon(Icons.lock, color: Colors.black38),
              //       border: OutlineInputBorder(),
              //     ),
              //   ),

              /// **OTP Field (Only Show if OTP is Sent)**
              if (isOtpSent) ...[
                const SizedBox(height: 20),
                TextFormField(
                  focusNode: _focusnode2,
                  controller: otpController,
                  validator: (val) => val!.isEmpty ? "Enter OTP" : null,
                  decoration: const InputDecoration(
                    hintText: 'Enter OTP',
                    prefixIcon: Icon(Icons.lock, color: Colors.black38),
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 20),

                /// **Login Button**
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    onPressed: verifyOtp,
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.orange),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(7))))),
                    child: const Text(
                      "Log In",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],

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
}
