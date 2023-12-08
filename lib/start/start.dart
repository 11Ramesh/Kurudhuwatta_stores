import 'package:flutter/material.dart';
import 'package:kurudhuwatta_grocery/variable/variable_start_screen.dart';
import 'package:kurudhuwatta_grocery/screen/login.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  colors variableColors = colors();
  widgets variableWidgets = widgets();

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: variableColors.homePageColor,
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Container(
              child: Stack(
                children: [
                  Positioned(
                      left: -screenwidth * 0.05,
                      top: screenHeight * 0.1,
                      height: screenHeight * 0.3,
                      width: screenwidth * 1,
                      child: variableWidgets.backgroundImage()),
                  Positioned(
                      left: screenwidth * 0.1,
                      top: screenHeight * 0.4,
                      width: screenwidth * 0.8,
                      height: screenHeight * 0.4,
                      child: variableWidgets.welcomeText()),
                  Positioned(
                      left: screenwidth * 0.2,
                      top: screenHeight * 0.7,
                      height: screenHeight * 0.08,
                      width: screenwidth * 0.6,
                      child: variableWidgets.getstartButton(context))
                ],
              ),
            );
          } else {
            return Container(
              child: Stack(
                children: [
                  Positioned(
                      left: -screenwidth * 0.05,
                      top: screenHeight * 0.05,
                      height: screenHeight * 0.35,
                      width: screenwidth * 1,
                      child: variableWidgets.backgroundImage()),
                  Positioned(
                      left: screenwidth * 0.25,
                      top: screenHeight * 0.4,
                      width: screenwidth * 0.5,
                      height: screenHeight * 0.5,
                      child: variableWidgets.welcomeText()),
                  Positioned(
                      left: screenwidth * 0.3,
                      top: screenHeight * 0.8,
                      height: screenHeight * 0.08,
                      width: screenwidth * 0.4,
                      child: variableWidgets.getstartButton(context))
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
