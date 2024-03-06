import 'package:ace_applicant/Auth/Google_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "package:flutter/gestures.dart";
import 'package:go_router/go_router.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: screenWidth / 2,
                color: Colors.blue[500],
                height: MediaQuery.of(context).size.height,
                // height: WidgetsBinding.instance.window.physicalSize.height,
                // constraints: BoxConstraints.expand(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Container(
                        margin: EdgeInsets.fromLTRB((screenWidth / 2) * 0.45, 0,
                            (screenWidth / 2) * 0.45, 0),
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
                        "assets/images/undraw_career_progress_ivdb.svg",
                        width: (screenWidth / 2) * 0.65,
                        height: (screenWidth / 2) * 0.45,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: (screenWidth / 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Container(
                        margin: EdgeInsets.fromLTRB((screenWidth / 2) * 0.8, 0,
                            (screenWidth / 2) * 0.8, 0),
                        child: Text(
                          'Create an Account',
                          style: TextStyle(
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: ((screenWidth / 2) * 0.8) * 0.5,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'First Name',
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
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: ((screenWidth / 2) * 0.8) * 0.5,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Last Name',
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
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: (screenWidth / 2) * 0.8,
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
                      width: (screenWidth / 2) * 0.8,
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
                      width: (screenWidth / 2) * 0.8,
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
                            child: Center(child: Text("Sign Up"))),
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
                          indent: (screenWidth / 2) * 0.2,
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
                          endIndent: (screenWidth / 2) * 0.2,
                        ),
                      ),
                    ]),
                    // SizedBox(height: 15),
                    // _loginWithButton(image: "assets/images/google.png"),
                    GoogleBtn1(
                      onPressed: () {},
                      isDesktop: true,
                    ),

                    SizedBox(height: 15),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'By creating an account, you agree to our ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        TextSpan(
                            text: 'Terms and Conditions',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Login Text Clicked');
                              }),
                        TextSpan(
                          text: '. ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        TextSpan(
                          text: 'Already have account? ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        TextSpan(
                            text: 'Login',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.go("/login");
                              }),
                      ]),
                    )
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
        width: 90,
        height: 70,
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
            width: 35,
          ),
        )),
      ),
    );
  }
}
