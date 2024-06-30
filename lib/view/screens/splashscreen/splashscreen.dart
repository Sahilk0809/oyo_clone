import 'dart:async';

import 'package:flutter/material.dart';
import 'package:oyo_clone/view/screens/login/login.dart';
import 'package:oyo_clone/view/screens/profilescreen/profile_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    });
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/Images/Splash.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
