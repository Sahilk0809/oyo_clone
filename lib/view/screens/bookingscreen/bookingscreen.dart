import 'package:flutter/material.dart';
import 'package:oyo_clone/utils/imagelist.dart';
import 'package:oyo_clone/view/screens/DetailScreen/component/component.dart';
import 'package:oyo_clone/view/screens/DetailScreen/detailscreen.dart';
import 'package:oyo_clone/view/screens/login/component/component.dart';
import 'package:oyo_clone/view/screens/login/login.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Booking'),
      ),
      body: bookingList.isEmpty
          ? Padding(
              padding: const EdgeInsets.only(top: 95, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'asset/Images/bg2.jpg',
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
                          height: 2,
                        ),
                      ),
                      Text(
                        'now',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade600,
                          letterSpacing: -0.1,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.003,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/home');
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          height: height * 0.06,
                          width: width * 0.15,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              'Book now',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  ...List.generate(
                    bookingList.length,
                    (index) => bookingMethod(height, width, index),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/home');
                    },
                    child: button(height, width, 'Book More'),
                  ),
                ],
              ),
            ),
    );
  }

  Container bookingMethod(double height, double width, int index) {
    return Container(
      height: height * 0.23,
      width: width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: height * 0.2,
            width: width * 0.17,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageList[selectindex]['img5'],
                ),
              ),
            ),
          ),
          SizedBox(
            width: width * 0.019,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bookingList[selectindex].name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                'Rs. ${bookingList[index].rent}/-',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                width: width * 0.2,
                child: Text(
                  bookingList[index].address,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Text(
                bookingList[index].location,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
