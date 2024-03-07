import 'package:ace_applicant/Components/GradientButton1.dart';
import 'package:flutter/material.dart';

import '../Components/BadgeButton.dart';

class Resume_Desktop extends StatefulWidget {
  const Resume_Desktop({super.key});

  @override
  State<Resume_Desktop> createState() => _Resume_DesktopState();
}

class _Resume_DesktopState extends State<Resume_Desktop> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Flexible(
      child: Row(
        children: [
          Container(
            width: screenWidth * 0.4,
            child: Card(
              surfaceTintColor: Colors.white,
              shadowColor: Colors.black,
              elevation: 15,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        // print(_selectedIndex);
                      },
                      child: RoundedBadge(
                          title: "Upload Resume for Review!",
                          icon: Icon(
                            Icons.file_upload,
                            color: Color.fromRGBO(65, 105, 225, 1),
                          )),
                    ),
                    SizedBox(
                      height: 25,
                    ),
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
