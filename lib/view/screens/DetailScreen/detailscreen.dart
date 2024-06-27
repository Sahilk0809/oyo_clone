import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oyo_clone/modal/modal.dart';
import 'package:oyo_clone/utils/global.dart';
import 'package:oyo_clone/utils/imagelist.dart';

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

  @override
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
                  SizedBox(
                    height: height * 0.30,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Image.asset('${imageList[selectIndex]['img1']}'),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Image.asset('${imageList[selectIndex]['img2']}'),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Image.asset('${imageList[selectIndex]['img3']}'),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Image.asset('${imageList[selectIndex]['img4']}'),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Image.asset('${imageList[selectIndex]['img5']}'),
                        ],
                      ),
                    ),
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
                                    color: const Color(0xfff5f5f5),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  child: const Center(
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
                              '${detailModel!.hotelList1[selectIndex].name}',
                              style: const TextStyle(
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
                            const Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              '${detailModel!.hotelList1[selectIndex].rating}',
                              style: const TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            const Text(
                              '(2473 ratings)',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black38,
                              ),
                            ),
                            const Text(
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
                              child: const Text(
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
                        const Divider(),
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
                            "${detailModel!.hotelList1[selectIndex].address}",
                            // textAlign: TextAlign.start,
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        const Row(
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
                        const Row(
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
                            const Icon(
                              Icons.wb_auto_outlined,
                              size: 25,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            const Text(
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
                            const Text(
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
                            const Icon(CupertinoIcons.person_2_fill),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            const Text(
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
                            const Text(
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
                            const Icon(Icons.thumb_up_alt),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            const Text(
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
                            const Icon(Icons.bookmark_add),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '${detailModel2!.hotelList3[selectIndex].location}',
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        SizedBox(
                          height: height * 0.1 + 50,
                          width: width * 0.9 + 10,
                          // color: Colors.blueAccent,
                          child: Row(
                            children: [
                              const Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 83),
                                    child: Text(
                                      'Get 50 OYO Rupee\ncashback',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 0),
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
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(7),
                                      ),
                                    ),
                                    child: const Image(
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
                        const Row(
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
                                  margin: const EdgeInsets.all(5),
                                  height: height * 0.09,
                                  width: width * 0.75,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                      ),
                                    ],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: const ListTile(
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
                          height: height * 0.01,
                        ),
                         Row(
                          children: [
                            SizedBox(
                              width: width * 0.025,
                            ),
                            const Text(
                              'View all offers',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        const Row(
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
                          height: height * 0.2,
                          width: width,
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
                                  const Icon(
                                    Icons.calendar_today,
                                    size: 22,
                                  ),
                                  SizedBox(
                                    width: width * 0.07,
                                  ),
                                  const Text(
                                    'Dates',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.2,
                                  ),
                                  const Text(
                                    'Wed,26 Jun - Thu,27 Jun',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blueAccent,
                                    ),
                                  )
                                ],
                              ),
                              const Divider(
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
                                  const Icon(
                                    Icons.person_rounded,
                                    size: 22,
                                  ),
                                  SizedBox(
                                    width: width * 0.07,
                                  ),
                                  const Text(
                                    'Guests',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.31,
                                  ),
                                  const Text(
                                    ' 1 room . 1 guest',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blueAccent,
                                    ),
                                  )
                                ],
                              ),
                              const Divider(
                                endIndent: 10,
                                indent: 70,
                              ),
                              SizedBox(
                                height: height * 0.018,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                  const Icon(
                                    Icons.person_outline,
                                    size: 22,
                                  ),
                                  SizedBox(
                                    width: width * 0.07,
                                  ),
                                  const Text(
                                    'Booking for',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.44,
                                  ),
                                  const Text(
                                    'User',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
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
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(Icons.close),
                  ),
                  SizedBox(
                    width: width * 0.6,
                  ),
                  Container(
                    height: height * 0.07,
                    width: width * 0.08,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(Icons.favorite_border),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Container(
                    height: height * 0.07,
                    width: width * 0.08,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(Icons.share),
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
      ),
    );
  }
}

//Text scalar
