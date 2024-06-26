import 'package:flutter/cupertino.dart';
import 'package:oyo_clone/view/screens/homescreen/homescreen.dart';

import '../view/screens/login/login.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> routes = {
     '/': (context) => const Homescreen(),
    '/login': (context) => const LoginScreen(),
  };
}