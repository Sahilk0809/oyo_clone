import 'package:flutter/cupertino.dart';
import 'package:oyo_clone/view/screens/DetailScreen/detailscreen.dart';
import 'package:oyo_clone/view/screens/bookingscreen/bookingscreen.dart';
import 'package:oyo_clone/view/screens/homescreen/homescreen.dart';
import 'package:oyo_clone/view/screens/savescreen/savescreen.dart';
import '../view/screens/createacount/createaccount.dart';
import '../view/screens/login/login.dart';
import '../view/screens/servicescreen/servicescreen.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> routes = {
    //  '/': (context) => const Homescreen(),
    // '/': (context) => const LoginScreen(),
    //'/':(context)=>Service_page(),
    // '/': (context) => const SavedScreen(),
    // '/': (context) => const DetailScreen(),
    '/': (context) => const DetailScreen(),
  };
}