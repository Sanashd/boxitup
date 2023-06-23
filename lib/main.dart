import 'package:boxitup/firebase_options.dart';
import 'package:boxitup/screens/content_model.dart';
import 'package:boxitup/screens/login_screen.dart';
import 'package:boxitup/screens/onboarding_screen.dart';

import 'package:boxitup/screens/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MaterialColor mycolor = const MaterialColor(
    0xFF558B2F,
    <int, Color>{
      50: Color.fromARGB(232, 22, 149, 41),
      100: Color.fromARGB(232, 22, 149, 41),
      200: Color.fromARGB(232, 22, 149, 41),
      300: Color.fromARGB(232, 22, 149, 41),
      400: Color.fromARGB(232, 22, 149, 41),
      500: Color.fromARGB(232, 22, 149, 41),
      600: Color.fromARGB(232, 22, 149, 41),
      700: Color.fromARGB(232, 22, 149, 41),
      800: Color.fromARGB(232, 22, 149, 41),
      900: Color.fromARGB(232, 22, 149, 41),
    },
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: mycolor,
        // fontFamily: GoogleFonts.lato().fontFamily
      ),
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData(primarySwatch: Colors.green
      // routes: {
      //   "/": (context) => const OnBoardingScreen(),
      // },
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return LoginScreen();
          } else {
            return const OnBoardingScreen();
          }
        },
      ),
    );
  }
}
