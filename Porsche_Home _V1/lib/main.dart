import 'package:flutter/material.dart';
import 'package:porsche_home/screens/aboutus.dart';
import 'package:porsche_home/screens/homescreen.dart';
import 'package:porsche_home/screens/loginscreen.dart';
import 'package:porsche_home/screens/profilescreen.dart';
import 'package:porsche_home/screens/registerscreen.dart';
import 'package:porsche_home/screens/welcomescreen.dart';
import 'package:porsche_home/screens/settingsscreen.dart';
import 'package:porsche_home/screens/welcomescreen2.dart';
import 'package:porsche_home/screens/ownporsche.dart';
import 'package:porsche_home/screens/aboutus.dart';
import 'package:porsche_home/screens/contactus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      routes: {
        'home': (context) => HomeScreen(),
        'login': (context) => LoginScreen(),
        'profile': (context) => ProfileScreen(),
        'register': (context) => RegisterScreen(),
        'welcome': (context) => WelcomeScreen(),
        'settings': (context) => SettingsScreen(),
        'welcome2': (context) => WelcomeScreen2(),
        'ownporsche': (context) => OwnAPorsche(),
        'aboutus': (context) => AboutUs(),
        'contact': (context) => ContactUs(),
      },
      initialRoute: 'welcome',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "BebasNeue"
      ),
    );
  }
}