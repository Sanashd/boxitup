import 'package:boxitup/screens/forgot_password.dart';
import 'package:boxitup/screens/home_screen.dart';
import 'package:boxitup/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/customized_button.dart';
import '../widgets/customized_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                                builder: (context) => const ForgotPassword()));
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
                  buttonColor: Colors.black,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.height * 0.15,
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
                          width: MediaQuery.of(context).size.height * 0.18,
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
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                FontAwesomeIcons.google,
                              ),
                              onPressed: () {},
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
                          fontSize: 15,
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
                            color: Color.fromARGB(255, 215, 116, 9),
                            fontSize: 15,
                          )),
                    ),
                  ],
                ),
              ]))),
    ));
  }
}

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {

//   bool changebutton = false;
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//         color: Colors.white,
//         child: Column(
//           children: [
//             Image.asset("assets/images/Messenger-pana.png",
//                 width: 300, height: 300, fit: BoxFit.fill),
//             const SizedBox(
//               height: 10.0,
//             ),
//            const Text("Welcome ",
//                 style:
//                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
//             const SizedBox(
//               height: 10.0,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
//               child: Column(
//                 children: [
//                   TextFormField(
//                     decoration: const InputDecoration(
//                       hintText: "Enter Username ",
//                       labelText: "Username",
//                     ),
//                     onChanged: (value) {
//                       name = value;
//                       setState(() {
//                         name = value;
//                       });
//                     },
//                   ),
//                   TextFormField(
//                     // showCursor: true,
//                     obscureText: true,
//                     decoration: const InputDecoration(
//                       hintText: "Enter Password",
//                       labelText: "Password",
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20.0,
//                   ),

//                   InkWell(
//                     onTap: () async {
//                       setState(() {
//                         changebutton = true;
//                       });
//                       await Future.delayed(const Duration(
//                         seconds: 1,
//                       ));
//                       // Navigator.pushNamed(context, MyRoutes.homeRoute);
//                     },
//                     child: AnimatedContainer(
//                         duration: const Duration(
//                           seconds: 1,
//                         ),
//                         alignment: Alignment.center,
//                         height: 45,
//                         width: changebutton ? 50 : 150,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8),
//                             color: changebutton
//                                 ? (Colors.orange)
//                                 : Colors.deepPurple),
//                         child: changebutton
//                             ? const Icon(Icons.done)
//                             : const Text("Login",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.bold))),
//                   ),
//                   // ElevatedButton(
//                   //   onPressed: () {
//                   //     Navigator.pushNamed(context, MyRoutes.homeRoute);
//                   //   },
//                   //   style: const ButtonStyle(
//                   //       backgroundColor: MaterialStatePropertyAll(
//                   //           Color.fromARGB(255, 161, 59, 220))),
//                   //   child: const Text("Login"),
//                   // )
//                 ],
//               ),
//             )
//           ],
//         ));
//   }
// }
