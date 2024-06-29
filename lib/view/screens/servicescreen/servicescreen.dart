// import 'dart:developer';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:oyo_clone/utils/Location_List.dart';
// import 'package:oyo_clone/utils/global.dart';
// import 'package:oyo_clone/utils/ratelist.dart';
//
// class Service_page extends StatefulWidget {
//   const Service_page({super.key});
//
//   @override
//   State<Service_page> createState() => _Service_pageState();
// }
//
// class _Service_pageState extends State<Service_page> {
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.white70,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   height: height * 0.5,
//                   width: width * double.infinity,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       fit: BoxFit.cover,
//                       image: AssetImage('asset/hotelImage/hotel12/4.jpeg'),
//                     ),
//                     color: Colors.white,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 90),
//                   child: Container(
//                     height: height * 0.061,
//                     width: width * 0.5,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         color: Colors.white),
//                     child:  Row(
//                       children: [
//                         Icon(Icons.person_2_sharp),
//                         RichText(
//                           text: TextSpan(
//                             text: '\t\t\t\ Company-',
//                             style: TextStyle(fontSize: 15, color: Colors.black),
//                           ),
//                         ),
//                         RichText(text: TextSpan(text: 'Service',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)))
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 150),
//                   child: Text('  This is OYO serviced \n  premium hotel',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 300,left: 1),
//                   child: Container(
//                     height: height*0.06,
//                     width: width*0.32,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(60),
//                       color: Colors.white,
//                     ),
//                     child: Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Icon(Icons.play_arrow,color: Colors.black,),
//                         ),
//                         Text('play video',style: TextStyle(fontSize: 18),),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: height*0.1,),
//                 Row(
//                   children: [
//
//                     Column(
//                       children: [
//                         SizedBox(height: height * 0.2,),
//                         Container(
//                           height: height*0.3,
//                           width: width*0.4,
//                           decoration: BoxDecoration(
//
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.white
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: width*0.21,),
//                     Column(
//                       // crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         SizedBox(height: height * 0.2,),
//                         Container(
//                           height: height*0.2,
//                           width: width*0.3,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.white
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../../../utils/Color.dart';
import '../../../utils/Location_List.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: height * 0.35,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      'asset/Images/Template1.jpeg',
                    ),
                  ),
                ),
                // child: Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Row(
                //       children: [
                //         Container(
                //           height: height * 0.04,
                //           width: width * 0.42,
                //           decoration: BoxDecoration(
                //             color: Colors.white,
                //             borderRadius: BorderRadius.circular(9),
                //           ),
                //           child: const Center(
                //             child: Text(
                //               'Company-Serviced',
                //               style: TextStyle(
                //                   fontSize: 15, fontWeight: FontWeight.w600),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //     SizedBox(
                //       height: height * 0.015,
                //     ),
                //     const Row(
                //       children: [
                //         Text(
                //           'This is OYO serviced',
                //           style: TextStyle(
                //             color: Colors.white,
                //             fontSize: 30,
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //       ],
                //     ),
                //     const Row(
                //       children: [
                //         Text(
                //           'Premium hotel',
                //           style: TextStyle(
                //             color: Colors.white,
                //             fontSize: 30,
                //             fontWeight: FontWeight.bold,
                //             height: 1,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 220),
                      height: height * 0.23,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  'Discover by destination',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ...List.generate(
                                  locationList.length,
                                  (index) => Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: height * 0.10,
                                              width: width * 0.20,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                    locationList[index]['img'],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Text(
                                          '${locationList[index]['name']}',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 420),
                      height: height * 0.36,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 0.002),
                      ),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  'Launch Prices',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Image.asset(
                                  'asset/Images/Premium2.jpeg',
                                  height: 210,
                                  width: 170,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'asset/Images/Premium3.jpeg',
                                      height: 210,
                                      width: 160,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'asset/Images/Premium4.jpeg',
                                      height: 210,
                                      width: 160,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.020,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            buildTex(height, width,
                                'asset/hotelImage/hotel14/4.jpeg'),
                            buildTex(height, width,
                                'asset/hotelImage/hotel14/4.jpeg'),
                          ],
                        ),
                        Row(
                          children: [
                            buildContainer(height, width,
                                'asset/hotelImage/hotel10/4.png', 'Surat'),
                            buildContainer(height, width,
                                'asset/hotelImage/hotel10/4.png', 'Vadodara'),
                          ],
                        ),
                        Row(
                          children: [
                            buildContainer2(height, width),
                            buildContainer(height, width,
                                'asset/hotelImage/hotel17/4.jpeg', 'Bangalore'),
                          ],
                        ),
                        Row(
                          children: [
                            buildTex(height, width,
                                'asset/hotelImage/hotel14/4.jpeg'),
                            buildTex(height, width,
                                'asset/hotelImage/hotel14/4.jpeg'),
                          ],
                        ),
                        Row(
                          children: [
                            buildContainer(height, width,
                                'asset/hotelImage/hotel10/4.png', 'Surat'),
                            buildContainer(height, width,
                                'asset/hotelImage/hotel10/4.png', 'Vadodara'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: height * 0.1,
          width: width * 0.9 + 50,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Colors.black54,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 60),
                    child: Row(
                      children: [
                        Text(
                          '  ₹999/-',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ₹2500/-',
                          style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    '    ₹99 taxes & fees',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: width * 0.045,
              ),
              Column(
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/home');
                    },
                    child: Container(
                      height: height * 0.06,
                      width: width * 0.45,
                      decoration: BoxDecoration(
                        color: mainRed,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Center(
                        child: Text(
                          'Explore',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildTex(double height, double width, image) {
    return Container(
      margin: const EdgeInsets.all(4),
      height: height * 0.15,
      width: width * 0.45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    );
  }

  Container buildContainer2(double height, double width) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: height * 0.30,
      width: width * 0.45,
      decoration: const BoxDecoration(),
      child: Column(
        children: [
          const Row(
            children: [
              Icon(
                Icons.format_quote,
                size: 50,
                color: Colors.grey,
              ),
            ],
          ),
          const Row(
            children: [
              Text(
                'The hotel exprience\nwas simply amazing.\nThe amenities were\ntop-notch,the room..',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(
            height: height * 0.010,
          ),
          const Row(
            children: [
              Text(
                'Chaluvraja s',
                style: TextStyle(
                  fontSize: 15,
                ),
              )
            ],
          ),
          const Row(
            children: [
              Text(
                'Super Townhouse...',
                style: TextStyle(fontSize: 14, color: Colors.blue),
              )
            ],
          ),
          const Row(
            children: [
              Text(
                'Yelahanka Zone,\nBengaluru',
                style: TextStyle(fontSize: 14, color: Colors.blue),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container buildContainer(
      double height, double width, String image, String name) {
    return Container(
      margin: const EdgeInsets.all(4),
      height: height * 0.29,
      width: width * 0.45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    height: 2,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
