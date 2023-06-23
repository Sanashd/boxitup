import 'package:boxitup/screens/profile_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      ("assets/images/Delivery promo.png"),
      ("assets/images/Courier.png"),
    ];

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: const EdgeInsets.all(.0),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: const BoxDecoration(),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();

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
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 24),
                child: Icon(Icons.notifications))
          ],
        ),
        body: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.3,
            enlargeCenterPage: true,
            // enableInfiniteScroll: false,
            // enlargeFactor: 4,
            initialPage: 0,
            autoPlay: false,
          ),
          items: imageSliders,
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
                  onTap: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfilePage()));


                  },
                ),
              ]),
        )

        
        );
  }
}

// class EnlargeStrategyDemo  extends StatelessWidget {
//   const EnlargeStrategyDemo({super.key});

//   @override
//   Widget build(BuildContext context) {

// final List<Widget> imageSliders = imgList.map((item) => Container(
//   child: Container(
//     margin: const EdgeInsets.all(5.0),
//     child: ClipRRect(
//       borderRadius: const BorderRadius.all(Radius.circular(5.0)),
//       child: Stack(
//         children: <Widget>[
//           Image.network(item, fit: BoxFit.cover, width: 1000.0),
//           Positioned(
//             bottom: 0.0,
//             left: 0.0,
//             right: 0.0,
//             child: Container(
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     Color.fromARGB(200, 0, 0, 0),
//                     Color.fromARGB(0, 0, 0, 0)
//                   ],
//                   begin: Alignment.bottomCenter,
//                   end: Alignment.topCenter,
//                 ),
//               ),
//               padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//               child: Text(
//                 'No. ${imgList.indexOf(item)} image',
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       )
//     ),
//   ),
// )).toList();
//     return Scaffold(
//       appBar: AppBar(title: const Text('Complicated image slider demo')),
//       body: Container(
//         child: Column(children: <Widget>[
//           CarouselSlider(
//             options: CarouselOptions(
//               autoPlay: true,
//               aspectRatio: 2.0,
//               enlargeCenterPage: true,
//               enlargeStrategy: CenterPageEnlargeStrategy.height,
//             ),
//             items: imageSliders,
//           ),
//         ],)
//       ),
//     );
//   }
// }
