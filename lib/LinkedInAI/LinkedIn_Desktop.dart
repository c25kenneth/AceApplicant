import 'package:ace_applicant/Components/GradientButton1.dart';
import 'package:flutter/material.dart';

import '../Components/BadgeButton.dart';

class LinkedIn_Desktop extends StatefulWidget {
  const LinkedIn_Desktop({super.key});

  @override
  State<LinkedIn_Desktop> createState() => _LinkedIn_DesktopState();
}

class _LinkedIn_DesktopState extends State<LinkedIn_Desktop> {
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
                          title: "LinkedIn",
                          icon: Icon(
                            Icons.file_upload,
                            color: Colors.white,
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
