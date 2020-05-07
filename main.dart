import 'package:flutter/material.dart';
import 'package:optimaibmhack/OwnerOrBuyer.dart';
import 'LoginAndRegPage.dart';
import 'login_screen.dart';
import 'story_screen.dart';
import 'registration_screen.dart';
import 'welcome_screen.dart';
import 'OwnerOrBuyer.dart';
import 'success.dart';
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
        'OwnerOrBuyer':(context)=>OwnerOrBuyer(),
        'registration_screen':(context)=>RegistrationScreen(),
        'login_screen':(context)=>LoginScreen(),
        'story_screen':(context)=>StoryScreen(),
       'LoginAndRegPage':(context)=>LoginAndRegPage(),
        'success':(context)=>Success(),


      },
    );
  }
}

