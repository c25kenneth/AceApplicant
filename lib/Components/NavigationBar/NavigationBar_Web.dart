import "package:flutter/material.dart";
import "package:material_design_icons_flutter/material_design_icons_flutter.dart";

class NavigationBar_Web extends StatefulWidget {
  const NavigationBar_Web({super.key});

  @override
  State<NavigationBar_Web> createState() => _NavigationBar_WebState();
}

enum SampleItem { profile, signout }

class _NavigationBar_WebState extends State<NavigationBar_Web> {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = true;
  bool showTrailing = false;
  double groupAlignment = -1.0;
  SampleItem? selectedItem;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      backgroundColor: Colors.lightBlue[900],
      indicatorColor: Colors.blue[400],
      selectedIconTheme: IconThemeData(color: Colors.white),
      selectedIndex: _selectedIndex,
      groupAlignment: groupAlignment,
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      labelType: labelType,
      leading: showLeading
          ? PopupMenuButton<SampleItem>(
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
            )
          : const SizedBox(),
      trailing: showTrailing
          ? IconButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              icon: const Icon(Icons.more_horiz_rounded),
            )
          : const SizedBox(),
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
    );
  }
}
