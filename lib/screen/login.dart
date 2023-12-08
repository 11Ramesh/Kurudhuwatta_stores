import 'package:flutter/material.dart';
import 'package:kurudhuwatta_grocery/variable/public_variable.dart';
import 'package:kurudhuwatta_grocery/variable/variable_login_screen.dart';
import 'package:kurudhuwatta_grocery/variable/variable_start_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool suffixIconShow = false;
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    PublicWidget publicWidget = PublicWidget();
    Widgets widgets = Widgets();

    PublicColor color = PublicColor();
    return Scaffold(
      backgroundColor: color.homePageColor,
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Column(
              children: [
                SafeArea(child: publicWidget.backButton(context)),
                Container(
                  margin: EdgeInsets.only(
                      left: screenwidth * 0.05, right: screenwidth * 0.05),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: screenwidth * 0.04),
                        width: screenwidth,
                        child: widgets.firstText(),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: screenwidth * 0.05),
                        width: screenwidth,
                        child: widgets.secondText(),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: screenHeight * 0.05, left: screenwidth * 0.02),
                        width: screenwidth * 0.8,
                        height: screenHeight * 0.08,
                        child: widgets.userNameInput(),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: screenHeight * 0.02, left: screenwidth * 0.02),
                        width: screenwidth * 0.8,
                        height: screenHeight * 0.08,
                        child: widgets.passwordInput(),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: screenHeight * 0.03),
                        width: screenwidth * 0.5,
                        height: screenHeight * 0.07,
                        child: widgets.submitButton(),
                      ),
                      Center(
                        child: widgets.fogetButton(),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                            left: screenwidth < 380
                                ? screenwidth * 0.14
                                : screenwidth < 430
                                    ? screenwidth * 0.18
                                    : screenwidth < 485
                                        ? screenwidth * 0.22
                                        : screenwidth * 0.3,
                          ),
                          width: screenwidth,
                          child: widgets.signupButton())
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
