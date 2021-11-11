import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login/Screens/OnBoarding/onboarding_screen.dart';
import 'package:flutter_login/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_login/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

int isviewed;

void main() async{
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isviewed = prefs.getInt('onBoard');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Course App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: isviewed != 0 ? OnBoardScreen() :  WelcomeScreen(),
    );
  }
}
