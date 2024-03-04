import 'package:ace_applicant/Auth/Register_Desktop.dart';
import 'package:ace_applicant/Auth/Register_Mobile_Web.dart';
import 'package:ace_applicant/Auth/SignIn_Desktop.dart';
import 'package:ace_applicant/Auth/SignIn_Mobile_Web.dart';
import 'package:ace_applicant/Error404.dart';
import 'package:ace_applicant/responsive_layout.dart';
import 'package:flutter/material.dart';
import "package:go_router/go_router.dart";

void main() {
  runApp(const MyApp());
}

GoRouter _appRoute = GoRouter(
    // redirect: (context, state) {
    //   String currentLocation = GoRouterState.of(context).uri.toString();
    //   print(currentLocation);
    //   if (currentLocation == "/") {
    //     return "/login";
    //   } else {
    //     return null;
    //   }
    // },
    errorBuilder: (context, state) {
      return ResponsiveLayout(
          mobileBody: SignInMobileWeb(), desktopBody: SignIn());
    },
    initialLocation: "/login",
    routes: <RouteBase>[
      GoRoute(
          path: "/login",
          builder: (BuildContext context, GoRouterState state) {
            return ResponsiveLayout(
                mobileBody: SignInMobileWeb(), desktopBody: SignIn());
          }),
      GoRoute(
          path: "/signup",
          builder: (BuildContext context, GoRouterState state) {
            return ResponsiveLayout(
                mobileBody: RegisterMobileWeb(), desktopBody: Register());
          })
    ]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),

      routerConfig: _appRoute,
      // home: ResponsiveLayout(
      //     mobileBody: SignInMobileWeb(), desktopBody: SignIn()),
    );
  }
}
