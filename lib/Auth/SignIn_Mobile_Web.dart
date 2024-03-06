import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "package:flutter/gestures.dart";
import 'package:go_router/go_router.dart';

// #63BDFF

class SignInMobileWeb extends StatefulWidget {
  const SignInMobileWeb({super.key});

  @override
  State<SignInMobileWeb> createState() => _SignInMobileWebState();
}

class _SignInMobileWebState extends State<SignInMobileWeb> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: Stack(
                children: [
                  Container(
                    color: Colors.blue[500],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Container(
                          margin: EdgeInsets.fromLTRB((screenWidth / 2) * 0.45,
                              0, (screenWidth / 2) * 0.45, 0),
                          child: Text(
                            'Become An Ace Candidate in Seconds',
                            style: TextStyle(
                                fontSize: 55,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 32),
                      Center(
                        child: SvgPicture.asset(
                          "assets/images/update_resume.svg",
                          width: (screenWidth) * 0.75,
                          height: (screenWidth) * 0.45,
                        ),
                      ),
                    ],
                  ),
                ],
              )),
              SizedBox(height: 22),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            screenWidth * 0.8, 20, screenWidth * 0.8, 0),
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: screenWidth * 0.8,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter email',
                          filled: true,
                          fillColor: Colors.blueGrey[50],
                          labelStyle: TextStyle(fontSize: 12),
                          contentPadding: EdgeInsets.only(left: 30),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueGrey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueGrey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: screenWidth * 0.8,
                      child: TextField(
                        obscureText: hidePassword,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          counterText: 'Forgot password?',
                          suffixIcon: IconButton(
                            icon: hidePassword
                                ? Icon(Icons.visibility_off_outlined)
                                : Icon(Icons.visibility_outlined),
                            color: Colors.grey,
                            onPressed: () {
                              setState(() {
                                hidePassword = !hidePassword;
                              });
                            },
                          ),
                          filled: true,
                          fillColor: Colors.blueGrey[50],
                          labelStyle: TextStyle(fontSize: 12),
                          contentPadding: EdgeInsets.only(left: 30),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueGrey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueGrey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: screenWidth * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.lightBlue,
                        //     spreadRadius: 2.5,
                        //     blurRadius: 5,
                        //   ),
                        // ],
                      ),
                      child: ElevatedButton(
                        child: Container(
                            width: double.infinity,
                            height: 50,
                            child: Center(child: Text("Sign In"))),
                        onPressed: () => print("it's pressed"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey[300],
                          height: 50,
                          indent: screenWidth * 0.1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text("Or continue with"),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey[400],
                          height: 50,
                          endIndent: screenWidth * 0.1,
                        ),
                      ),
                    ]),
                    // SizedBox(height: 15),
                    _loginWithButton(image: "assets/images/google.png"),
                    SizedBox(height: 15),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'New to AceApplicant? ',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        TextSpan(
                            text: 'Create an Account',
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.go("/signup");
                              }),
                      ]),
                    ),

                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loginWithButton({required String image, bool isActive = false}) {
    return InkWell(
      onTap: () {
        print("Logging In With Google");
      },
      child: Container(
        width: 45,
        height: 35,
        decoration: isActive
            ? BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300]!,
                    spreadRadius: 10,
                    blurRadius: 30,
                  )
                ],
                borderRadius: BorderRadius.circular(15),
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey[400]!),
              ),
        child: Center(
            child: Container(
          decoration: isActive
              ? BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400]!,
                      spreadRadius: 2,
                      blurRadius: 15,
                    )
                  ],
                )
              : BoxDecoration(),
          child: Image.asset(
            '$image',
            width: 20,
          ),
        )),
      ),
    );
  }
}
