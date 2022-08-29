import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_app/screens/home_screen/home_screen.dart';
import 'package:hr_app/screens/login_screen/login_screen.dart';
import 'package:hr_app/shared/styles/themes.dart';
import 'package:hr_app/util/constants/Colors.dart';
import 'package:hr_app/util/constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      home: SplashScreen(),
      routes: {
        HomeScreen.routName: (_) => HomeScreen(),
        LoginScreen.routName: (_) => LoginScreen(),
        /*AddingNoteScreen.routName: (_) => AddingNoteScreen(),
        ProfileScreen.routName: (_) => ProfileScreen(),
        SettingScreen.routName: (_) => SettingScreen(),
        UsersScreen.routName: (_) => UsersScreen(),*/
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KAppColor,
      body: Stack(children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'assets/images/splash.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        if (Platform.isIOS)
          const Center(child: CupertinoActivityIndicator(radius: 30))
        else
          const Center(child: CircularProgressIndicator(color: Colors.white))
      ]),
    );
  }
}
