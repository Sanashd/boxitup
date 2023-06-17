import 'package:boxitup/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/customized_button.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,

        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         scale: 6,
        //         alignment: Alignment.topCenter,
        //         image: AssetImage(
        //           "assets/images/Mobile login-pana.png",
        //         ))
        // ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 250,
                width: 250,
                child: Image(
                    alignment: Alignment.center,
                    image: AssetImage(
                      "assets/images/logo.png",
                    ),
                    fit: BoxFit.cover),
              ),
              const SizedBox(height: 10),
              CustomizedButton(
                buttonText: "Login",
                buttonColor: const Color.fromARGB(232, 22, 149, 41),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const LoginScreen()));
                },
              ),
              CustomizedButton(
                buttonText: "Register",
                border: Border.all(width: 1, color: Colors.black),
                buttonColor: Colors.white,
                textColor: Colors.black,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const SignUpScreen()));
                },
              ),
              const SizedBox(height: 1.44),
              // const Padding(
              //   padding: EdgeInsets.all(10.0),
              //   child: Text(
              //     "Continue as a Guest",
              //     style: TextStyle(color: Color(0xff35C2C1), fontSize: 25),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
