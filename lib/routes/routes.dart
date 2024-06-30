import 'package:flutter/cupertino.dart';
import 'package:oyo_clone/view/screens/DetailScreen/detailscreen.dart';
import 'package:oyo_clone/view/screens/WalletScreen/Wallet.dart';
import 'package:oyo_clone/view/screens/bookingscreen/bookingscreen.dart';
import 'package:oyo_clone/view/screens/bottomnavigator/bottom_navigator.dart';
import 'package:oyo_clone/view/screens/homescreen/homescreen.dart';
import 'package:oyo_clone/view/screens/otp/otp.dart';
import 'package:oyo_clone/view/screens/paymentscreen/payment_screen.dart';
import 'package:oyo_clone/view/screens/profilescreen/profile_screen.dart';
import 'package:oyo_clone/view/screens/savescreen/savescreen.dart';
import 'package:oyo_clone/view/screens/searchscreen/search_screen.dart';
import 'package:oyo_clone/view/screens/splashscreen/splashscreen.dart';
import '../view/screens/createacount/createaccount.dart';
import '../view/screens/login/login.dart';
import '../view/screens/servicescreen/servicescreen.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> routes = {
     '/': (context) => const SplashScreen(),
     '/home': (context) => const Homescreen(),
    '/detail': (context) => const DetailScreen(),
    '/booking': (context) => const BookingScreen(),
    '/payment': (context) => const PaymentScreen(),
      '/login': (context) => const LoginScreen(),
    '/main': (context) => const MainNavigator(),
    '/service': (context) => const ServiceScreen(),
    '/save': (context) => const SavedScreen(),
    '/search': (context) => const SearchScreen(),
    '/otp': (context) => const OtpScreen(),
    '/profile': (context) => const ProfilePage(),
     '/create': (context) => const CreateAccount(),
     '/wallet': (context) => const Wallet(),
  };
}