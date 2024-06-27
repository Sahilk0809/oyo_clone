import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 95,left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/book1.jpg',
                  height: 210,
                ),
              ],
            ),
            const SizedBox(
              height: 85,
            ),
            Column(
              children: [
                Text(
                  'No bookings, yet!',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      height: height * 0.0018),
                ),
                Text(
                  'Search for your next destination & start booking',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade600,
                      letterSpacing: -0.1,
                      height: 2),
                ),Text(
                  'now',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade600,
                    letterSpacing: -0.1,),
                ),
                SizedBox(height: height*0.003,),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: height * 0.06,
                  width: width * 0.15,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      'book now',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}