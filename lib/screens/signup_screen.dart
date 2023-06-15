import 'package:boxitup/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/customized_button.dart';
import '../widgets/customized_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(07.0),
                child: Container(
                  height: 40,
                  width: 40,
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
                padding: EdgeInsets.all(04.0),
                child: Text("Hello!  Register to get \nStarted",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              CustomizedTextfield(
                myController: _usernameController,
                hintText: "Username",
                isPassword: false,
              ),
              CustomizedTextfield(
                myController: _emailController,
                hintText: "Email",
                isPassword: false,
              ),
              CustomizedTextfield(
                myController: _passwordController,
                hintText: "Password",
                isPassword: true,
              ),
              CustomizedTextfield(
                myController: _confirmPasswordController,
                hintText: "Confirm Password",
                isPassword: true,
              ),
              CustomizedButton(
                buttonText: "Sign Up",
                buttonColor: Colors.black,
                textColor: Colors.white,
                onPressed: ()

                    // async
                    {
                  // try {
                  //   await FirebaseAuthService().signup(
                  //       _emailController.text.trim(),
                  //       _passwordController.text.trim());

                  //   if (!mounted) return;

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                  //     } on FirebaseException catch (e) {
                  //       debugPrint(e.message);
                  //     }

                  //     // Navigator.push(context,
                  //     //     MaterialPageRoute(builder: (_) => const LoginScreen()));
                },
              ),
              Padding(
                padding: const EdgeInsets.all(07.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.height * 0.15,
                      color: Colors.grey,
                    ),
                    const Text(" Or Sign Up with "),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.height * 0.13,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(07.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            FontAwesomeIcons.google,
                            // color: Colors.blue,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(48, 8, 8, 8.0),
              //   child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?",
                      style: TextStyle(
                        color: Color(0xff1E232C),
                        fontSize: 15,
                      )),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const LoginScreen()));
                    },
                    child: const Text("  Login Now",
                        style: TextStyle(
                          color: Color.fromARGB(255, 236, 120, 18),
                          fontSize: 15,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
