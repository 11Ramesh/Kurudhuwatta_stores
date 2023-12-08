import 'package:flutter/material.dart';
import 'package:kurudhuwatta_grocery/variable/public_variable.dart';
import 'package:kurudhuwatta_grocery/variable/variable_start_screen.dart';
import 'package:kurudhuwatta_grocery/screen/login.dart';

class LoginWidgets extends StatefulWidget {
  const LoginWidgets({super.key});

  @override
  State<LoginWidgets> createState() => Widgets();
}

class Widgets extends State<LoginWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  bool suffixIconShow = false;
  PublicColor color = PublicColor();
  Widget firstText() {
    return Text(
      "Welcome Back",
      style: TextStyle(fontFamily: "Raleway-ExtraBoldItalic", fontSize: 40),
      textAlign: TextAlign.left,
    );
  }

  Widget passwordInput() {
    return TextFormField(
      decoration: InputDecoration(
          //contentPadding: EdgeInsets.only(left: 20),
          hintText: "Password",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: color.fillcolor,
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: suffixIconShow
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility))),
    );
  }

  Widget secondText() {
    return Text(
      "Sign in to your account.",
      style: TextStyle(fontFamily: "Raleway-ExtraBoldItalic", fontSize: 20),
      textAlign: TextAlign.left,
    );
  }

  Widget userNameInput() {
    return TextFormField(
      decoration: InputDecoration(
        //contentPadding: EdgeInsets.symmetric(vertical: 100),
        hintText: "User Name",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: color.fillcolor,
        prefixIcon: const Icon(Icons.email),
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        "Login",
        style: TextStyle(fontFamily: "Raleway-Bold", fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: color.buttonForeground,
        backgroundColor: color.buttonBackground,
      ),
    );
  }

  Widget fogetButton() {
    return TextButton(
        onPressed: () {},
        child: Text(
          "Forgot Password ?",
          style: TextStyle(
              fontFamily: "Raleway-Bold",
              fontSize: 14,
              color: color.textButton),
        ));
  }

  Widget signupButton() {
    return Center(
      child: Row(
        children: [
          Text(
            "Don't have an account ?",
            style: TextStyle(
              fontFamily: "Raleway-Bold",
              fontSize: 14,
            ),
          ),
          TextButton(
            child: Text(
              "Sign Up",
              style: TextStyle(
                  fontFamily: "Raleway-Bold",
                  fontSize: 14,
                  color: color.textButton),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
