import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0.0,
          title: const Text(
            "Home",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0),
          ),
        ),
       
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
              // Important: Remove any padding from the ListView.
              // padding: const EdgeInsets.all(),
              children: [
                DrawerHeader(
                  // decoration: const BoxDecoration(
                  // color: Colors.blue,
                  // ),
                  child: Image.asset(
                    "assets/images/delivery.jpg",
                    // height: 30,
                    fit: BoxFit.fill,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.home,
                    color: Color.fromARGB(232, 22, 149, 41),
                  ),
                  title: const Text('Home'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                ),
                ListTile(
                  // trailing: const Icon(
                  //   Icons.arrow_forward_ios,
                  // ),
                  leading: const Icon(
                    Icons.search,
                    color: Color.fromARGB(232, 22, 149, 41),
                  ),
                  title: const Text(
                    'Tracker',
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.local_shipping_outlined,
                    color: Color.fromARGB(232, 22, 149, 41),
                  ),
                  title: const Text('Place Order'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.calculate_outlined,
                    color: Color.fromARGB(232, 22, 149, 41),
                  ),
                  title: const Text('Rates'),
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>MyOrderPage()
                    // ));
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.schedule,
                    color: Color.fromARGB(232, 22, 149, 41),
                  ),
                  title: const Text('Schedule'),
                  onTap: ()
                      //  async
                      {
                    // final AuthMethods _authMethods = AuthMethods();
                    // await _authMethods.logout();
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.settings,
                    color: Color.fromARGB(232, 22, 149, 41),
                  ),
                  title: const Text('Settings'),
                  onTap: () {},
                ),
              ]),
        ));
  }
}
