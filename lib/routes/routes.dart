import 'package:flutter/cupertino.dart';
import 'package:oyo_clone/view/screens/homescreen/homescreen.dart';
import 'package:oyo_clone/view/screens/searchscreen/search_screen.dart';
import '../view/screens/login/login.dart';
import '../view/screens/servicescreen/servicescreen.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> routes = {
    //  '/': (context) => const Homescreen(),
    // '/login': (context) => const LoginScreen(),
    // '/':(context)=>Service_page(),
    '/': (context) => const SearchScreen(),
  };
}