import 'package:flutter/material.dart';
import 'package:oyo_clone/utils/global.dart';
import 'package:oyo_clone/utils/imagelist.dart';
import 'package:oyo_clone/view/screens/DetailScreen/detailscreen.dart';
import 'package:oyo_clone/view/screens/bookingscreen/bookingscreen.dart';
import 'package:oyo_clone/view/screens/bottomnavigator/bottom_navigator.dart';
import 'package:oyo_clone/view/screens/login/component/component.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Payment'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Pay now & save time during check-in',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    const Text(
                      'Total Amount',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.015,
                    ),
                    const Icon(
                      Icons.info_outline,
                      size: 17,
                    ),
                    const Spacer(),
                    Text(
                      '₹${bookingList[bookingSelect].rent}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const Divider(),
                SizedBox(
                  height: height * 0.02,
                ),
                const Row(
                  children: [
                    Text('Pay using'),
                  ],
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                button(height, width,
                    'Pay ₹${bookingList[bookingSelect].rent} Now'),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width * 0.5,
                          child: Text(
                            bookingList[bookingSelect].name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.6,
                          child: Text(
                            bookingList[bookingSelect].address,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.3,
                      child: Image.asset(
                        imageList[bookingSelect]['img4'],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  height: height * 0.06,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.teal[50],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.02,
                      ),
                      const Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.teal,
                      ),
                      SizedBox(
                        width: width * 0.04,
                      ),
                      const Text(
                        'Rated high for cleanliness',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.035,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildCircleAvatar(Icons.directions),
                    buildCircleAvatar(Icons.call),
                    buildCircleAvatar(Icons.help_center_outlined),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Direction'),
                    Text('Call Hotel'),
                    Text('Need Help'),
                  ],
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Check-in',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Mon, 31 Jun 2024',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '12 PM Onwards',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Text('1N'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Checkout',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Wed, 2 Jul 2024',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Before 11 AM',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                const Text(
                  'Booking ID',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SelectableText('JOX19568'),
                SizedBox(
                  height: height * 0.02,
                ),
                const Divider(),
                const Text(
                  'Reserved For',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Text('Sahil Kashyap'),
                SizedBox(
                  height: height * 0.02,
                ),
                const Divider(),
                const Text(
                  'Rooms & Guest',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Text('1 Classic . 1 Guest'),
                SizedBox(
                  height: height * 0.02,
                ),
                const Divider(),
                const Text(
                  'Contact Information',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Text('rk4852115@gmail.com'),
                SizedBox(
                  height: height * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Do you want to cancel booking'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('No'),
                          ),
                          TextButton(
                            onPressed: () {
                              bookingList.removeAt(bookingSelect);
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => const MainNavigator(),
                                ),
                              );
                            },
                            child: const Text('Yes'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: button(height, width, 'Cancel Booking'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  CircleAvatar buildCircleAvatar(icon) {
    return CircleAvatar(
      radius: 28,
      backgroundColor: Colors.grey[200],
      child: Icon(
        icon,
        size: 30,
      ),
    );
  }
}
