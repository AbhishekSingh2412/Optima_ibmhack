import 'package:flutter/material.dart';
import 'package:optimaibmhack/story_screen.dart';
import 'story_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );



      animation =
          ColorTween(begin: Colors.lightGreenAccent, end: Colors.white).animate(
              controller);

      controller.forward();

      controller.addListener(() {
        setState(() {});
      });
    }
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
                Center(
                  child: Hero(
                    tag: 'logo',
                    child: Center(
                      child: Container(
                        child: Image.asset('images/logo.png'),
                        height: 120.0,
                      ),
                    ),
                  ),
                ),
      

              SizedBox(
                width: 250.0,
                child: FadeAnimatedTextKit(
                onTap: () {
                print("Tap Event");
              },
              text: [
                "OPTIMA",
                "Optimize the experience",
                "Hack the COVID Crisis"

              ],
              textStyle: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
              alignment: AlignmentDirectional.centerStart // or Alignment.topLeft
          ),
        ),



            SizedBox(
              height: 48.0,
            ),
            Center(
              child: GredientButton(onPressed: (){
                Navigator.pushNamed(context, "LoginAndRegPage");
              },
                radius: 15.0,
                splashColor: Colors.lightGreenAccent,
                colors: [
                  Colors.greenAccent,
                  Colors.lightGreenAccent,
                ],
                title: "Click here to proceed",
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[


                  Hero(
                    tag: 'ibm',
                    child: Center(
                      child: Container(
                        child: Image.asset('images/ibm.png'),
                        height: 25.0,
                      ),
                    ),
                  ),



                  Hero(
                    tag: 'nasscom',
                    child: Center(
                      child: Container(
                        child: Image.asset('images/nasscom.png'),
                        height: 25.0,
                      ),
                    ),

                ),
              ],
            ),

          ],
        ),


        ),

    );
  }
}
