import 'package:boxitup/screens/content_model.dart';
import 'package:boxitup/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
        flex: 5,
        child: PageView.builder(
          controller: _controller,
          itemCount: contents.length,
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (_, i) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(
                    contents[i].image,
                    height: 320,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    contents[i].title,
                    style: const TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    contents[i].description,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              contents.length, (index) => buildDot(index, context)),
        ),
      ),
      Container(
          height: 50,
          margin: const EdgeInsets.all(40),
          width: 170,
          // color: Theme.of(context).primaryColor,
          child: FloatingActionButton(
              backgroundColor: const Color.fromARGB(232, 22, 149, 41),
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const WelcomeScreen()));
                }
                _controller.nextPage(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(45.0))),
              child: Text(
                currentIndex == contents.length - 1 ? "Get Started" : "Next",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              )))
    ]));
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
