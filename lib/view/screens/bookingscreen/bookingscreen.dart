import 'package:flutter/material.dart';
import 'package:oyo_clone/utils/Color.dart';
import 'package:oyo_clone/utils/imagelist.dart';
import 'package:oyo_clone/view/screens/DetailScreen/component/component.dart';
import 'package:oyo_clone/view/screens/DetailScreen/detailscreen.dart';
import 'package:oyo_clone/view/screens/login/component/component.dart';
import 'package:oyo_clone/view/screens/login/login.dart';

import '../../../utils/global.dart';

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
      ),
      body: bookingList.isEmpty
          ? Padding(
              padding: const EdgeInsets.only(top: 90, left: 20, right: 20),
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
                          Navigator.of(context).pushNamed('/main');
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
          : SingleChildScrollView(
        scrollDirection: Axis.vertical,
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bookings',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Text(
                      '   Upcoming',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    ...List.generate(
                      bookingList.length,
                      (index) => bookingMethod(height, width, index),
                    ),
                  ],
                ),
              ),
          ),
    );
  }

  Column bookingMethod(double height, double width, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: height * 0.1,
              width: width * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    imageList[selectIndex]['img3'],
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
                  bookingList[selectIndex].location,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  '30 Jun - 02 Jul . 1 Guest',
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  width: width * 0.3,
                  child: Text(
                    bookingList[selectIndex].address,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Text(
                  bookingList[selectIndex].location,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey.shade100,
                  child: Icon(Icons.location_on_outlined,
                      color: Colors.black, size: 20),
                ),
                Text(
                  'Directions',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey.shade100,
                  child: Icon(Icons.call, color: Colors.black, size: 20),
                ),
                Text(
                  'Call hotel',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            Column(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey.shade100,
                  child: Icon(Icons.help_center_outlined,
                      color: Colors.black, size: 20),
                ),
                Text(
                  'Need help',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Text(
          'Pay now & save time during \ncheck-in',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Row(
          children: [
            Text(
              'Pending amount',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade800,
              ),
            ),
            SizedBox(
              width: width * 0.01,
            ),
            Icon(
              Icons.info_outline,
              size: 15,
              color: Colors.grey.shade800,
            ),
            SizedBox(
              width: width * 0.23,
            ),
            Text(
              '₹${bookingList[selectIndex].rent}',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ],
        ),
        SizedBox(
          height: height*0.02,
        ),
        GestureDetector(
          onTap: (){
            //Navigator.of(context).pushNamed('/payment');
          },
          child: Container(
            height: height*0.06,
            width: width*0.58,
            decoration: BoxDecoration(
              color: mainRed,
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: Text('Pay ₹${bookingList[selectIndex].rent} now',style: TextStyle(
              color: Colors.white,
            ),),
          ),
        ),
        SizedBox(
          height: height*0.01,
        ),
        Divider(color: Colors.grey,),
      ],
    );
  }
}
