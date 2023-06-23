import 'package:boxitup/screens/forgot_password.dart';
import 'package:boxitup/screens/home_screen.dart';
import 'package:boxitup/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../services/firebase_auth_service.dart';
import '../widgets/customized_button.dart';
import '../widgets/customized_textfield.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                              icon: const Icon(Icons.arrow_back_ios_sharp),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Welcome Back! Glad \nto see you again",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      CustomizedTextfield(
                        myController: _emailController,
                        hintText: "Enter your Email",
                        isPassword: false,
                      ),
                      CustomizedTextfield(
                        myController: _passwordController,
                        hintText: "Enter your Password",
                        isPassword: true,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgotPassword()));
                            },
                            child: const Text("Forgot Password?",
                                style: TextStyle(
                                  color: Color(0xff6A707C),
                                  fontSize: 15,
                                )),
                          ),
                        ),
                      ),
                      CustomizedButton(
                        buttonText: "Login",
                        buttonColor: const Color.fromARGB(232, 22, 149, 41),
                        textColor: Colors.white,
                        onPressed: () async {
                          //  The else part is not working in the video because we have
                          //  enclosed it in the try catch block. Once we have error in
                          // login the firebase exception is thrown and the codeblock after that
                          // error is skiped and code of catch block is executed.
                          // if we want our else part to be executed we need to get rid from
                          // this try catch or add that code in catch block.

                          try {
                            await FirebaseAuthService().login(
                                _emailController.text.trim(),
                                _passwordController.text.trim());
                            if (FirebaseAuth.instance.currentUser != null) {
                              if (!mounted) return;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()));
                            }

                            //  This code is gone inside the catch block
                            // which is executed only when we have firebaseexception
                            //  else {
                            //   showDialog(
                            //       context: context,
                            //       builder: (context) => AlertDialog(
                            //               title: Text(
                            //                   " Invalid Username or password. Please register again or make sure that username and password is correct"),
                            //               actions: [
                            //                 ElevatedButton(
                            //                   child: Text("Register Now"),
                            //                   onPressed: () {
                            //                     Navigator.push(
                            //                         context,
                            //                         MaterialPageRoute(
                            //                             builder: (context) =>
                            //                                 SignUpScreen()));
                            //                   },
                            //                 )
                            //               ]));

                            // }
                          } on FirebaseException catch (e) {
                            debugPrint("error is ${e.message}");

                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                        title: const Text(
                                            " Invalid Username or password. Please register again or make sure that username and password is correct"),
                                        actions: [
                                          ElevatedButton(
                                            child: const Text("Register Now"),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const SignUpScreen()));
                                            },
                                          )
                                        ]));
                          }

                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (_) => const LoginScreen()));
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 1,
                                width:
                                    MediaQuery.of(context).size.height * 0.15,
                                color: Colors.grey,
                              ),
                              const Text(
                                " Or Login with ",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Container(
                                height: 1,
                                width:
                                    MediaQuery.of(context).size.height * 0.18,
                                color: Colors.grey,
                              ),
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 50,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: IconButton(
                                    icon: const Icon(
                                      FontAwesomeIcons.google,
                                    ),
                                    onPressed: () async {
                                      await FirebaseAuthService()
                                          .logininwithgoogle();

                                      if (FirebaseAuth.instance.currentUser !=
                                          null) {
                                        if (!mounted) return;

                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const HomePage()));
                                      } else {
                                        throw Exception("Error");
                                      }
                                    },
                                  )),
                            ]),
                      ),
                      const SizedBox(
                        height: 85,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account?",
                              style: TextStyle(
                                color: Color(0xff1E232C),
                                fontSize: 16,
                              )),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const SignUpScreen()));
                            },
                            child: const Text("  SignUp Now",
                                style: TextStyle(
                                    color: Color.fromARGB(232, 22, 149, 41),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ])))));
  }
}
