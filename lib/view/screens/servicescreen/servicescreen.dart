import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oyo_clone/utils/Location_List.dart';
import 'package:oyo_clone/utils/global.dart';
import 'package:oyo_clone/utils/ratelist.dart';

class Service_page extends StatefulWidget {
  const Service_page({super.key});

  @override
  State<Service_page> createState() => _Service_pageState();
}

class _Service_pageState extends State<Service_page> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: height * 0.4,
                  width: width * double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('asset/Images/oyo.jpg'),
                    ),
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: height * 0.1,
                      width: width * 0.1,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                    Container(
                      height: height * 0.1,
                      width: width * 0.1,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ],
                ),

                // Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(left: 20, top: 250),
                //       child: Container(
                //         height: height * 0.31,
                //         width: width * 0.4,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(25),
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(left: 30, top: 140),
                //       child: Container(
                //         height: height * 0.15,
                //         width: width * 0.4,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(25),
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                //
                //
                // Column(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(
                //           top: 500, right: 200, left: 10),
                //       child: Container(
                //         height: height * 0.3,
                //         width: width * 0.4,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(25),
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(left: 180),
                //       child: Container(
                //         height: height * 0.3,
                //         width: width * 0.4,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(25),
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //     SizedBox(height: 10,),
                //     Row(
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.only(left: 210),
                //           child: Container(
                //             height: height * 0.3,
                //             width: width * 0.4,
                //             decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(25),
                //                 color: Colors.white
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(right: 170, bottom: 59),
                //       child: Container(
                //         height: height * 0.15,
                //         width: width * 0.4,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(25),
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //
                //
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 290),
                      child: Container(
                        height: height * 0.3,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: SingleChildScrollView(scrollDirection:Axis.horizontal ,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              children: [
                                ...List.generate(
                                    locationList.length,
                                    (index) => box1(
                                        img: locationList[index]['img'],
                                        name: locationList[index]['name']
                                            .toString()))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 550, left: 20),
                      child: Container(
                        height: height * 0.3,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection:Axis.horizontal ,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              children: [
                                ...List.generate(
                                  ServiceList.length,
                                      (index) => box2(
                                    st: ServiceList[index]['st'],
                                    rate: ServiceList[index]['rate'],
                                    txt: ServiceList[index]['txt'],
                                    imgs: ServiceList[index]['imgs'],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget box1({required String img, required String name}) {
  return Padding(
    padding: const EdgeInsets.only(top: 50),
    child: Container(
      margin: EdgeInsets.all(5),
      height: 100,
      width: 80,
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(img),
          ),
          shape: BoxShape.circle,
          color: Colors.blueGrey),
      child: Padding(
        padding: const EdgeInsets.only(top: 85, left: 15),
        child: Text(
          name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 10,
          ),
        ),
      ),
    ),
  );
}

Widget box2({required String st, required String rate, required String txt,required String imgs}) {
  return Padding(
    padding: const EdgeInsets.only(top: 550, left: 20),
    child: Container(
      height: 150,
      width: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imgs),
        ),
        borderRadius: BorderRadius.circular(15),
        color: Colors.black54,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Text.rich(TextSpan(children: [
          TextSpan(
            text: '${st}\n',
            style: TextStyle(
                color: Colors.white, fontSize: 8, ),
          ),
          TextSpan(
            text: '${rate}\n',
            style: TextStyle(
                color: Colors.white, fontSize: 8,),
          ),
          TextSpan(
            text: '${txt}\n',
            style: TextStyle(
                color: Colors.white, fontSize: 8,),
          ),
        ])),
      ),
    ),
  );
}
