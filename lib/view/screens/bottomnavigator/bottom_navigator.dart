import 'package:flutter/material.dart';
import '../NeedHelp/HelpScreen.dart';
import '../bookingscreen/bookingscreen.dart';
import '../homescreen/homescreen.dart';
import '../searchscreen/search_screen.dart';
import '../servicescreen/servicescreen.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

PageController _pageController = PageController();

List<Widget> _bottomNavigate = [
  const Homescreen(),
  const BookingScreen(),
  const SearchScreen(),
  const ServiceScreen(),
  const Helpscreen()
];
int myIndex = 0;

class _MainNavigatorState extends State<MainNavigator> {

  void _onPageChanged(int index){
    setState(() {
      myIndex = index;
    });
  }

  void _onItemTapped(int i){
    _pageController.jumpToPage(i);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _bottomNavigate,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
        currentIndex: myIndex,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Booking'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.home_repair_service), label: 'Service'),
          BottomNavigationBarItem(icon: Icon(Icons.help_center_outlined), label: 'Need Help'),
        ],
      ),
    );
  }
}