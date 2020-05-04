import 'package:flutter/material.dart';
import 'LoginAndRegPage.dart';
import 'login_screen.dart';
import 'story_screen.dart';
import 'registration_screen.dart';
import 'welcome_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: 'welcome_screen' ,
      routes: {
       'welcome_screen':(context)=> WelcomeScreen(),
        'registration_screen':(context)=>RegistrationScreen(),
        'login_screen':(context)=>LoginScreen(),
        'story_screen':(context)=>StoryScreen(),
       'LoginAndRegPage':(context)=>LoginAndRegPage(),

      },
    );
  }
}

