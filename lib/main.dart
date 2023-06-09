
import 'package:boxitup/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          // fontFamily: GoogleFonts.lato().fontFamily
        ),
        debugShowCheckedModeBanner: false,
        // darkTheme: ThemeData(primarySwatch: Colors.green
        routes: {
          "/": (context) =>  OnBoardingScreen(),
        });
  }
}
