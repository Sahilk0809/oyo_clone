import 'package:flutter/cupertino.dart';
import 'package:oyo_clone/login/login.dart';
import 'package:oyo_clone/view/screens/homescreen/homescreen.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> routes = {
    // '/': (context) => const Homescreen(),
    '/': (context) => const LoginScreen(),
  };
}