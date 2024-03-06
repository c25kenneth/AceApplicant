import "package:flutter/material.dart";

class NavigationBar_Mobile_Web extends StatefulWidget {
  const NavigationBar_Mobile_Web({super.key});

  @override
  State<NavigationBar_Mobile_Web> createState() =>
      _NavigationBar_Mobile_WebState();
}

enum SampleItem { resume, linkedin_profile, personalized_rec }

class _NavigationBar_Mobile_WebState extends State<NavigationBar_Mobile_Web> {
  SampleItem? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: PopupMenuButton<SampleItem>(
        icon: Icon(Icons.menu),
        initialValue: selectedItem,
        onSelected: (SampleItem item) {
          setState(() {
            selectedItem = item;
          });
          print(selectedItem);
        },
        itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
          const PopupMenuItem<SampleItem>(
            value: SampleItem.resume,
            child: Text('Resume Optimizer'),
          ),
          const PopupMenuItem<SampleItem>(
            value: SampleItem.linkedin_profile,
            child: Text('LinkedIn Profile Optimizer'),
          ),
          const PopupMenuItem<SampleItem>(
            value: SampleItem.personalized_rec,
            child: Text('Personalized Recommendations'),
          ),
        ],
      ),
    );
  }
}
