import 'package:ace_applicant/Components/NavigationBar/NavigationBar_Mobile_Web.dart';
import 'package:ace_applicant/Components/NavigationBar/NavigationBar_Web.dart';
import 'package:ace_applicant/responsive_layout.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // return const ResponsiveLayout(mobileBody: mobileBody, desktopBody: desktopBody);
    return Scaffold(
        body: ResponsiveLayout(
      mobileBody: NavigationBar_Mobile_Web(),
      desktopBody: Row(
        children: [NavigationBar_Web()],
      ),
    ));
  }
}
