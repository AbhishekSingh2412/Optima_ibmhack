import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';
class LoginAndRegPage extends StatefulWidget {
  @override
  _LoginAndRegPageState createState() => _LoginAndRegPageState();
}

class _LoginAndRegPageState extends State<LoginAndRegPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

              Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 180.0,
                  ),
                ),




            SizedBox(
              height: 48.0,
            ),


            Center(
              child: GredientButton(onPressed: (){
                Navigator.pushNamed(context, "login_screen");
              },

                radius: 15.0,
                splashColor: Colors.lightGreenAccent,
                colors: [
                  Colors.lightGreenAccent ,
                  Colors.green,
                ],
                title: "Log In",
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Center(
              child: GredientButton(onPressed: (){
                Navigator.pushNamed(context, "registration_screen");
              },
                radius: 15.0,
                splashColor: Colors.lightGreenAccent,
                colors: [
                  Colors.lightGreenAccent,
                  Colors.green,
                ],
                title: "Register",

              ),
            ),
          ],
        ),
      ),
    );
  }
}


