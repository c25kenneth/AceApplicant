import 'package:ace_applicant/Components/GradientButton1.dart';
import 'package:ace_applicant/Components/NavigationBar/NavigationBar_Web.dart';
import 'package:flutter/material.dart';

class Home_Desktop extends StatefulWidget {
  const Home_Desktop({super.key});

  @override
  State<Home_Desktop> createState() => _Home_DesktopState();
}

class _Home_DesktopState extends State<Home_Desktop> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Row(
        children: [
          NavigationBar_Web(),
          Container(
            width: screenWidth * 0.4,
            child: Card(
              surfaceTintColor: Colors.white,
              shadowColor: Colors.black,
              elevation: 15,
              child: Center(
                child: Column(
                  children: [
                    GradientButtonFb1(text: "Submit", onPressed: () {}),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Card(
              surfaceTintColor: Colors.white,
              shadowColor: Colors.black,
              elevation: 15,
              child: Center(
                child: Column(
                  children: [Text("Lol")],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
