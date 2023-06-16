import 'package:boxitup/firebase_options.dart';
import 'package:boxitup/screens/onboarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
          primarySwatch: Colors.purple,
          // fontFamily: GoogleFonts.lato().fontFamily
        ),
        debugShowCheckedModeBanner: false,
        // darkTheme: ThemeData(primarySwatch: Colors.green
        routes: {
          "/": (context) => const OnBoardingScreen(),
        });
  }
}
