import 'package:flutter/material.dart';
import 'package:kurudhuwatta_grocery/screen/login.dart';

class colors {
  Color homePageColor = Color.fromARGB(225, 252, 255, 238);
  Color homeContainer = const Color.fromARGB(255, 255, 255, 255);
  Color buttonForeground = const Color.fromARGB(255, 255, 255, 255);
  Color buttonBackground = Color.fromARGB(255, 4, 167, 135);
}

class widgets {
  colors variableColors = colors();
  Widget welcomeText() {
    return Container(
      decoration: BoxDecoration(
          color: variableColors.homeContainer,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(137, 142, 129, 129).withOpacity(1),
              offset: Offset(3, 3),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              child: Text(
                "Effortless home shopping, simplified.",
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: "Raleway-Bold",
                    color: variableColors.buttonBackground),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 13),
              child: Text(
                "For grocery shopping, trust the convenience of card payment, home delivery, and high-quality products.",
                style: TextStyle(fontSize: 11, fontFamily: "Raleway-Regular"),
                textAlign: TextAlign.left,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget backgroundImage() {
    return Image.asset("assets/images/background_for_home.png");
  }

  Widget getstartButton(context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      child: Text(
        "Get Start",
        style: TextStyle(fontFamily: "Raleway-Bold", fontSize: 18),
      ),
      style: ElevatedButton.styleFrom(
          foregroundColor: variableColors.buttonForeground,
          backgroundColor: variableColors.buttonBackground,
          shadowColor: Color.fromARGB(196, 255, 255, 255),
          elevation: 20),
    );
  }
}
