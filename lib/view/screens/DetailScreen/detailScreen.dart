import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oyo_clone/modal/modal.dart';
import 'package:oyo_clone/utils/global.dart';

import '../../../utils/global.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

DetailModel? detailModel;
DetailModel2? detailModel2;

class _DetailScreenState extends State<DetailScreen> {
  int change() {
    if (value == 6) {
      value = 0;
    } else {
      value++;
    }
    return value;
  }

  void initState() {
    detailModel = DetailModel.toList(hotelList);
    // TODO: implement initState
    super.initState();
    detailModel2 = DetailModel2.toList(hotelList2);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(),l
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: false,
                      autoPlayInterval: Duration(seconds: 2),
                    ),
                    items: hotelList.map((i) {
                      return Builder(
                        builder: (context) => SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                // margin: EdgeInsets.all(5),
                                height: height * 0.3,
                                width: width * 0.9 + 150,
                                // color: Colors.orange,
                                decoration: BoxDecoration(
                                  // border: Border.all(color: Colors.black38),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'asset/hotelImage/hotel1/1.webp'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: height * 0.1 - 50,
                                  width: width * 0.4 - 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xfff5f5f5),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Townhouse',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  // color: Color(0xfff5f5f5),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            // SizedBox(
                            //   width: width * 0.04,
                            // ),
                            Text(
                              '${detailModel!.hotelList1[selectindex].name}',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            // SizedBox(
                            //   width: width * 0.04,
                            // ),
                            Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              '${detailModel!.hotelList1[selectindex].rating}',
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              '(2473 ratings)',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black38,
                              ),
                            ),
                            Text(
                              ' 496 reviews',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.blueAccent,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.08,
                            ),
                            SizedBox(
                              width: width * 0.8 + 10,
                              child: Text(
                                '5.0 Check-in rating > Delightful experience',
                                // textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 16,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        // Row(
                        //   children: [
                        //     Text(
                        //       '...............................................................................',
                        //       style: TextStyle(
                        //           fontSize: 15, color: Colors.black38),
                        //     )
                        //   ],
                        // ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "${detailModel!.hotelList1[selectindex].address}",
                            // textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            Text(
                              'View on map',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Row(
                          children: [
                            Text(
                              'Why book this OYO?',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.wb_auto_outlined,
                              size: 25,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              'Wizard discount available',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.1 - 5,
                            ),
                            Text(
                              'Upto 10% extra discount for Wizard memebers',
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Icon(CupertinoIcons.person_2_fill),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              'Couples are welcome',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.1 - 5,
                            ),
                            Text(
                              'Unmarried couples allowed at the property',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Icon(Icons.thumb_up_alt),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              'Rated high for cleanliness',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Icon(Icons.bookmark_add),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '${detailModel2!.hotelList3[selectindex].location}',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Container(
                          height: height * 0.1 + 50,
                          width: width * 0.9 + 10,
                          // color: Colors.blueAccent,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 83),
                                    child: Text(
                                      'Get 50 OYO Rupee\ncashback',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 0),
                                    child: Text(
                                      'Earned on checkout, fully usable on\nnext stay',
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.black38
                                          // fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: width * 0.04,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: height * 0.03,
                                  ),
                                  Container(
                                    height: height * 0.1 - 20,
                                    width: width * 0.1 + 20,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black38),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(7),
                                      ),
                                    ),
                                    child: Image(
                                      image:
                                          AssetImage('asset/Icons/rupee.jpg'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Text(
                              'Browse through special offers',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ...List.generate(
                                5,
                                (index) => Container(
                                  margin: EdgeInsets.all(5),
                                  height: height * 0.1 - 10,
                                  width: width * 0.9 + 10,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: ListTile(
                                    title: Text(
                                      'Get upto 60% off',
                                      style: TextStyle(
                                        fontSize: 20,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Use FIRSTOYO60',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black38),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Text(
                              'View all offers',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.1 - 50,
                        ),
                        Row(
                          children: [
                            Text(
                              'Your booking details',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Container(
                          height: height * 0.2 + 30,
                          width: width * 0.9 + 20,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black26,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.03,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                  Icon(
                                    Icons.calendar_today,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                  Text(
                                    'Dates',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: width * 0.1 + 12,
                                  ),
                                  Text(
                                    'Wed,26 Jun - Thu,27 Jun',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blueAccent,
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                endIndent: 10,
                                indent: 70,
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                  Icon(
                                    Icons.person_rounded,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                  Text(
                                    'Guests',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: width * 0.2 + 8,
                                  ),
                                  Text(
                                    ' 1 room . 1 guest',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blueAccent,
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                endIndent: 10,
                                indent: 70,
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                  Icon(
                                    Icons.person_outline,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                  Text(
                                    'Booking for',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: width * 0.3,
                                  ),
                                  Text(
                                    'User',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blueAccent,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Container(
                    height: height * 0.07,
                    width: width * 0.08,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Icon(Icons.close),
                  ),
                  SizedBox(
                    width: width * 0.6,
                  ),
                  Container(
                    height: height * 0.07,
                    width: width * 0.08,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Icon(Icons.favorite_border),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Container(
                    height: height * 0.07,
                    width: width * 0.08,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Icon(Icons.share),
                  ),
                  // ActionChip(
                  //   avatar: Padding(
                  //     padding: const EdgeInsets.only(left: 5),
                  //     child: Icon(
                  //       Icons.close,
                  //       size: 25,
                  //     ),
                  //   ),
                  //   label: const Text(''),
                  //   onPressed: () {
                  //     setState(() {
                  //       favorite = !favorite;
                  //     });
                  //   },
                  //   shape: CircleBorder(side: BorderSide()),
                  // ),
                  // ActionChip(
                  //   avatar: Padding(
                  //     padding: const EdgeInsets.only(left: 5),
                  //     child: Icon(
                  //       favorite ? Icons.favorite : Icons.favorite_border,
                  //       size: 25,
                  //     ),
                  //   ),
                  //   label: const Text(''),
                  //   onPressed: () {
                  //     setState(() {
                  //       favorite = !favorite;
                  //     });
                  //   },
                  //   shape: CircleBorder(),
                  // ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: height * 0.09,
          width: width * 0.2,
          // color: Colors.black38,
          child: Row(
            children: [
              Text(
                '${detailModel!.hotelList1[selectindex].rent}',
                style: TextStyle(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

int value = 0;
int selectindex = 0;
bool favorite = false;
//Text scalar
