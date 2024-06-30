import 'package:flutter/cupertino.dart';
import 'package:oyo_clone/view/screens/DetailScreen/detailscreen.dart';
import 'package:oyo_clone/view/screens/bookingscreen/bookingscreen.dart';
import 'package:oyo_clone/view/screens/bottomnavigator/bottom_navigator.dart';
import 'package:oyo_clone/view/screens/homescreen/homescreen.dart';
import 'package:oyo_clone/view/screens/otp/otp.dart';
import 'package:oyo_clone/view/screens/paymentscreen/payment_screen.dart';
import 'package:oyo_clone/view/screens/searchscreen/search_screen.dart';
import '../view/screens/login/login.dart';
import '../view/screens/servicescreen/servicescreen.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> routes = {
     '/home': (context) => const Homescreen(),
    '/detail': (context) => const DetailScreen(),
    '/booking': (context) => const BookingScreen(),
    '/payment': (context) => const PaymentScreen(),
    '/': (context) => const LoginScreen(),
    '/main': (context) => const MainNavigator(),
    '/service': (context) => const ServiceScreen(),
    '/search': (context) => const SearchScreen(),
    '/login': (context) => const LoginScreen(),
    '/otp': (context) => const OtpScreen(),
    // '/': (context) => const CreateAccount(),
  };
}