import 'package:ace_applicant/Components/BadgeButton.dart';
import 'package:ace_applicant/Components/GradientButton1.dart';
import 'package:ace_applicant/Components/NavigationBar/NavigationBar_Web.dart';
import 'package:ace_applicant/LinkedInAI/LinkedIn_Desktop.dart';
import 'package:ace_applicant/Personalized_Pathway/Personalized_Pathway_Desktop.dart';
import 'package:ace_applicant/ResumeAI/Resume_Desktop.dart';
import 'package:flutter/material.dart';

class Home_Desktop extends StatefulWidget {
  const Home_Desktop({super.key});

  @override
  State<Home_Desktop> createState() => _Home_DesktopState();
}

class _Home_DesktopState extends State<Home_Desktop> {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = true;
  bool showTrailing = false;
  double groupAlignment = -1.0;
  SampleItem? selectedItem;
  @override
  List screens = [
    Resume_Desktop(),
    LinkedIn_Desktop(),
    Personalized_Pathway_Desktop()
  ];

  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Colors.lightBlue[900],
            indicatorColor: Colors.blue[400],
            selectedIconTheme: IconThemeData(color: Colors.white),
            selectedIndex: _selectedIndex,
            groupAlignment: groupAlignment,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
              print(_selectedIndex);
            },
            labelType: labelType,
            leading: PopupMenuButton<SampleItem>(
              icon: Icon(
                Icons.person,
                color: Colors.white,
                size: 45,
              ),
              initialValue: selectedItem,
              onSelected: (SampleItem item) {
                setState(() {
                  selectedItem = item;
                });
                print(selectedItem);
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<SampleItem>>[
                const PopupMenuItem<SampleItem>(
                  value: SampleItem.profile,
                  child: Text('View Profile'),
                ),
                const PopupMenuItem<SampleItem>(
                  value: SampleItem.signout,
                  child: Text('Sign Out'),
                ),
              ],
            ),

            // trailing: showTrailing
            //     ? IconButton(
            //         onPressed: () {
            //           // Add your onPressed code here!
            //         },
            //         icon: const Icon(Icons.more_horiz_rounded),
            //       )
            //     : const SizedBox(),
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Tooltip(
                  child: Icon(Icons.article_outlined, color: Colors.white54),
                  message: "Resume Optimizer",
                ),
                selectedIcon: Tooltip(
                  child: Icon(
                    Icons.article,
                  ),
                  message: "Resume Optimizer",
                ),
                label: Text(''),
              ),
              NavigationRailDestination(
                icon: Tooltip(
                  child: Icon(Icons.build_outlined, color: Colors.white54),
                  message: "Manage LinkedIn Profile",
                ),
                selectedIcon: Tooltip(
                  child: Icon(Icons.build),
                  message: "Manage LinkedIn Profile",
                ),
                label: Text(''),
              ),
              NavigationRailDestination(
                icon: Tooltip(
                  child: Icon(Icons.directions, color: Colors.white54),
                  message: "Personalized Career Recommendations",
                ),
                selectedIcon: Tooltip(
                    child: Icon(Icons.directions),
                    message: "Personailzed Career Recommendations"),
                label: Text(''),
              ),
            ],
          ),
          // Resume_Desktop(),
          screens[_selectedIndex]
          // Container(
          //   width: screenWidth * 0.4,
          //   child: Card(
          //     surfaceTintColor: Colors.white,
          //     shadowColor: Colors.black,
          //     elevation: 15,
          //     child: Center(
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           InkWell(
          //             onTap: () {
          //               print(_selectedIndex);
          //             },
          //             child: RoundedBadge(
          //                 title: "Upload Resume for Review!",
          //                 icon: Icon(
          //                   Icons.file_upload,
          //                   color: Colors.white,
          //                 )),
          //           ),
          //           SizedBox(
          //             height: 25,
          //           ),
          //           GradientButtonFb1(text: "Submit", onPressed: () {}),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Expanded(
          //   child: Card(
          //     surfaceTintColor: Colors.white,
          //     shadowColor: Colors.black,
          //     elevation: 15,
          //     child: Center(
          //       child: Column(
          //         children: [Text("Lol")],
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
