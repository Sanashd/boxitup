import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          // appBar: AppBar(
        iconTheme: const  IconThemeData(color: Colors.white),
        elevation: 0.0,
        title: const Text("Home", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 30.0),),
      ),
      drawer: const Drawer(),
        //   title: const Text("Catalouge App"),
        // ),
        // body: const Center(
        //   child: Text("Welcome to Box It Up"),
        // ),
        // drawer: const Drawer()
        );
  }
}

