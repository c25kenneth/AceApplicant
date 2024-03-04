import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: SvgPicture.asset(
              "assets/images/page_not_found.svg",
              width: screenWidth * 0.5,
              height: screenHeight * 0.5,
            ),
          ),
          SizedBox(height: 12),
          Center(
            child: Text(
              "Page Not Found!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
        ],
      ),
    );
  }
}
