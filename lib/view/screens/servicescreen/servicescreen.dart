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
                  height: height * 0.5,
                  width: width * double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('asset/hotelImage/hotel12/4.jpeg'),
                    ),
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Container(
                    height: height * 0.061,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child:  Row(
                      children: [
                        Icon(Icons.person_2_sharp),
                        RichText(
                          text: TextSpan(
                            text: '\t\t\t\ Company-',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        RichText(text: TextSpan(text: 'Service',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Text('  This is OYO serviced \n  premium hotel',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 300,left: 1),
                  child: Container(
                    height: height*0.06,
                    width: width*0.32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.play_arrow,color: Colors.black,),
                        ),
                        Text('play video',style: TextStyle(fontSize: 18),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height*0.1,),
                Row(
                  children: [

                    Column(
                      children: [
                        SizedBox(height: height * 0.2,),
                        Container(
                          height: height*0.3,
                          width: width*0.4,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: width*0.21,),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: height * 0.2,),
                        Container(
                          height: height*0.2,
                          width: width*0.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white
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
