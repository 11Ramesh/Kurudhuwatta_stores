import 'package:flutter/material.dart';

class PublicWidget {
  Widget backButton(context) {
    return Container(
        child: Row(
      children: [
        Container(
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new)),
        ),
        Expanded(
            child: Text(
          "Back",
          style: TextStyle(fontFamily: "Raleway-Bold", fontSize: 20),
        ))
      ],
    ));
  }
}

class PublicColor {
  Color homePageColor = Color.fromARGB(225, 252, 255, 238);
  Color fillcolor = const Color.fromARGB(255, 255, 255, 255);
  Color buttonForeground = const Color.fromARGB(255, 255, 255, 255);
  Color buttonBackground = Color.fromARGB(255, 4, 167, 135);
  Color textButton = Color.fromARGB(237, 3, 67, 54);
}
