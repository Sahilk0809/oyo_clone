import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oyo_clone/utils/global.dart';

class Service_page extends StatefulWidget {
  const Service_page({super.key});

  @override
  State<Service_page> createState() => _Service_pageState();
}

class _Service_pageState extends State<Service_page> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
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

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 250),
                      child: Container(
                        height: height * 0.31,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 140),
                      child: Container(
                        height: height * 0.15,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),


                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 500, right: 200, left: 10),
                      child: Container(
                        height: height * 0.3,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 180),
                      child: Container(
                        height: height * 0.3,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 210),
                          child: Container(
                            height: height * 0.3,
                            width: width * 0.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 170, bottom: 59),
                      child: Container(
                        height: height * 0.15,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                      ),
                    ),


                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            height: height * 0.3,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Wrap(
                              children: [
                              // ... List.generate(box1(img: prachiimg[index]['imgs']) as int)
                              ],
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(left: 30,top: 20),
                            //   child: Text('Discover by destination',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                            // )
                          ),
                        ),
                      ],
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

Widget box1({required String img})
{
var width;
var height;
  return Padding(

   padding: const EdgeInsets.all(8.0),
   child: Container(
   height: height*0.2,
   width: width*0.2,
  decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blueGrey)),);
}