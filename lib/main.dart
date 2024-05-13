import 'package:flutter/material.dart';
import 'package:i_xlick/Screens/activity_screen.dart';
import 'package:i_xlick/Screens/add_comment_screen.dart';
import 'package:i_xlick/Screens/add_to_collection.dart';
import 'package:i_xlick/Screens/boarding_screen.dart';
import 'package:i_xlick/Screens/category_selection.dart';
import 'package:i_xlick/Screens/challenge_screen.dart';
import 'package:i_xlick/Screens/chat_screen.dart';
import 'package:i_xlick/Screens/collection_screen.dart';
import 'package:i_xlick/Screens/collections_data.dart';
import 'package:i_xlick/Screens/comment_screen.dart';
import 'package:i_xlick/Screens/create_new_collection.dart';
import 'package:i_xlick/Screens/discover_screen.dart';
import 'package:i_xlick/Screens/edit_bio.dart';
import 'package:i_xlick/Screens/forgot_password.dart';
import 'package:i_xlick/Screens/friends_profile_screen.dart';
import 'package:i_xlick/Screens/home_screen.dart';
import 'package:i_xlick/Screens/message_screen.dart';
import 'package:i_xlick/Screens/my_navigation_bar.dart';
import 'package:i_xlick/Screens/new_password.dart';
import 'package:i_xlick/Screens/profile_settings.dart';
import 'package:i_xlick/Screens/settings_screen.dart';
import 'package:i_xlick/Screens/signin_screen.dart';
import 'package:i_xlick/Screens/signup_screen.dart';
import 'package:i_xlick/Screens/splash_screen.dart';
import 'package:i_xlick/Screens/topic_screen.dart';
import 'package:i_xlick/Screens/user_profile_screen.dart';
import 'package:i_xlick/Screens/verification_screen.dart';
import 'package:i_xlick/Widgets/app_bar.dart';
import 'package:i_xlick/Widgets/collections_screen.dart';
import 'package:i_xlick/Widgets/shots_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: SplashScreen()
    );
  }
}
