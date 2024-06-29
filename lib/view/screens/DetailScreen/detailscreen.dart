import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:oyo_clone/modal/modal.dart';
import 'package:oyo_clone/utils/Color.dart';
import 'package:oyo_clone/utils/global.dart';
import 'package:oyo_clone/view/screens/DetailScreen/component/component.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_extend/share_extend.dart';
import 'dart:ui' as ui;
import '../../../utils/imagelist.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

DetailModel? detailModel;
GlobalKey imgKey = GlobalKey();
int value = 0;

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
  Widget build(BuildContext context) {
    detailModel = DetailModel.toList(hotelList);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Marquee(
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Container(
                          height: height * 0.3,
                          width: width * 0.9 + 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    '${imageList[selectIndex]['img1']}'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          height: height * 0.3,
                          width: width * 0.9 + 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    '${imageList[selectIndex]['img2']}'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          height: height * 0.3,
                          width: width * 0.9 + 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    '${imageList[selectIndex]['img3']}'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          height: height * 0.3,
                          width: width * 0.9 + 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  '${imageList[selectIndex]['img4']}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.3,
                          width: width * 0.9 + 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  '${imageList[selectIndex]['img5']}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // CarouselSlider(
                  //   options: CarouselOptions(
                  //     autoPlay: false,
                  //     autoPlayInterval: Duration(seconds: 2),
                  //   ),
                  //   items: hotelList.map((i) {
                  //     return Builder(
                  //       builder: (context) => SingleChildScrollView(
                  //         scrollDirection: Axis.horizontal,
                  //         child: Row(
                  //           children: [
                  //             Container(
                  //               height: height * 0.3,
                  //               width: width * 0.9 + 150,
                  //               decoration: BoxDecoration(
                  //                 image: DecorationImage(
                  //                     image: AssetImage(
                  //                         'asset/hotelImage/hotel1/1.webp'),
                  //                     fit: BoxFit.cover),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     );
                  //   }).toList(),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: height * 0.03,
                                  width: width * 0.3,
                                  decoration: BoxDecoration(
                                    color: const Color(0xfff5f5f5),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Company Serviced',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            Text(
                              '${detailModel!.hotelList1[selectindex].name}',
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: mainRed,
                              size: 20,
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              '${detailModel!.hotelList1[selectindex].rating}'
                                  .toString(),
                              style: const TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              width: width * 0.015,
                            ),
                            Text(
                              '(${noPerson[selectIndex]})',
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                            const Text(
                              ' 496 reviews',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.blueAccent,
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
                              width: width * 0.06,
                            ),
                            SizedBox(
                              width: width * 0.85,
                              child: const Text(
                                '5.0 Check-in rating > Delightful experience',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey.shade200,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "${detailModel!.hotelList1[selectindex].address}",
                            style: const TextStyle(fontSize: 17),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                        const Row(
                          children: [
                            Text(
                              'View on map',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Why book this OYO?',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
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
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.1 - 5,
                            ),
                            const Text(
                              ' Upto 10% extra discount for Wizard memebers',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            const Icon(
                              CupertinoIcons.person_2,
                              size: 25,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            const Text(
                              'Couples are welcome',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.1 - 5,
                            ),
                            const Text(
                              ' Unmarried couples allowed at the property',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.thumb_up_alt_outlined,
                              size: 25,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            const Text(
                              'Rated high for cleanliness',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.bookmark_add_outlined,
                              size: 25,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '${detailModel!.hotelList1[selectindex].location}',
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        SizedBox(
                          height: height * 0.15,
                          width: width,
                          child: Row(
                            children: [
                              const Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 83),
                                    child: Text(
                                      'Get 50 OYO Rupee\ncashback',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 0),
                                    child: Text(
                                      'Earned on checkout, fully usable on\nnext stay',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black38),
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
                                    height: height * 0.01,
                                  ),
                                  Container(
                                    height: height * 0.09,
                                    width: width * 0.2,
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
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ...List.generate(
                                4,
                                (index) => Container(
                                  margin: const EdgeInsets.all(5),
                                  height: height * 0.09,
                                  width: width * 0.8,
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
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: width * 0.03,
                                      ),
                                      Image(
                                        image: const AssetImage(
                                            'asset/Images/oyo.png'),
                                        height: height * 0.1,
                                        width: width * 0.3 / 2,
                                      ),
                                      SizedBox(width: width * 0.15),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                '${offers[index]['first']}',
                                                style: const TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Text(
                                                '${offers[index]['second']}',
                                                style: const TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black38),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        const Row(
                          children: [
                            Text(
                              'View all offers',
                              style: TextStyle(
                                fontSize: 18,
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
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Container(
                          height: height * 0.25,
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
                                    Icons.calendar_today_outlined,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                  const Text(
                                    'Dates',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: width * 0.15,
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
                                    CupertinoIcons.person_2,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                  const Text(
                                    'Guests',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: width * 0.29,
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
                                height: height * 0.02,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                  const Icon(
                                    Icons.person_outline,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                  const Text(
                                    'Booking for',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: width * 0.4,
                                  ),
                                  const Text(
                                    'User',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blueAccent,
                                    ),
                                  )
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
                              'Ratings & reviews',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.1 + 10,
                            ),
                            const Text(
                              '4.9',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Icon(
                              Icons.star,
                              color: mainRed,
                              size: 35,
                            ),
                            Icon(
                              Icons.star,
                              color: mainRed,
                              size: 35,
                            ),
                            Icon(
                              Icons.star,
                              color: mainRed,
                              size: 35,
                            ),
                            Icon(
                              Icons.star,
                              color: mainRed,
                              size: 35,
                            ),
                            Icon(
                              Icons.star,
                              color: mainRed,
                              size: 35,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.09,
                            ),
                            Container(
                              height: height * 0.04,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                color: const Color(0xfff5f5f5),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(
                                child: Text(
                                  'Fabulous',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.05,
                            ),
                            const Text(
                              '2470 rating  497 reviews',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Column(
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'Mani Bhushan',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: mainRed,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: mainRed,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: mainRed,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: mainRed,
                                  size: 18,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.black26,
                                  size: 18,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            SizedBox(
                              height: height * 0.2 + 50,
                              width: width * 0.9 + 10,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  const Text(
                                    'I will definitely do that, Oyo is not its state of mind, its only a app for finding a hotel near you nothing else, otherwise whenever you call them they will not pick up, after this you have to talk to direct hotel, oyo is showing any amount of a room whenever you go to the hotel, they said its not right, we are not giving any room at this price you have to pay double otherwise we dont have any room, the charge extra for AC. Disgusting.',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            const Row(
                              children: [
                                Text(
                                  'Mayank Aggarwal',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: mainRed,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: mainRed,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: mainRed,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: mainRed,
                                  size: 18,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.black26,
                                  size: 18,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Container(
                                height: height * 0.2 + 50,
                                width: width * 0.9 + 10,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    const Text(
                                      'Oyo Rooms is a hotel chain that is known for its budget-friendly prices and comfortable accommodations. According to customer reviews, Oyo Rooms generally receives positive feedback for its clean and well-maintained rooms, friendly staff, and convenient locations. Some reviewers have also noted that the Oyo Rooms app is easy to use and makes booking a room quick and simple.',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            const Row(
                              children: [
                                Text(
                                  'BARSA MEHUL',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: mainRed,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: mainRed,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: mainRed,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: mainRed,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: mainRed,
                                  size: 18,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Container(
                              height: height * 0.2 + 50,
                              width: width * 0.9 + 10,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  const Text(
                                    'Oyo Rooms is a hotel chain that is known for its budget-friendly prices and comfortable accommodations. According to customer reviews, Oyo Rooms generally receives positive feedback for its clean and well-maintained rooms, friendly staff, and convenient locations. Some reviewers have also noted that the Oyo Rooms app is easy to use and makes booking a room quick and simple.',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: height * 0.07,
                      width: width * 0.08,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.close,
                        size: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.6,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (detailModel!.hotelList1[selectindex].like! == true) {
                          detailModel!.hotelList1[selectindex].like = false;
                          print(detailModel!.hotelList1[selectindex].like);
                          likeList.removeAt(selectindex);
                        }
                        else {
                          detailModel!.hotelList1[selectindex].like = true;
                          print(detailModel!.hotelList1[selectindex].like);
                          likeList.add(detailModel!.hotelList1[selectindex]);
                        }
                      });
                    },
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: (detailModel!.hotelList1[selectindex].like! == true)
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          : const Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                            ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.06,
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            child: Dialog(
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: height * 0.03,
                                      ),
                                      Container(
                                        height: height * 0.2 + 40,
                                        width: width * 0.9,
                                        color: DialogBox,
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: height * 0.06,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: width * 0.02 + 2,
                                            ),
                                            RepaintBoundary(
                                              key: imgKey,
                                              child: Container(
                                                height: height * 0.4,
                                                width: width * 0.68,
                                                color: Colors.black26,
                                                child: const Image(
                                                  image: AssetImage(
                                                      'asset/Icons/imgoyo.jpg'),
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: height * 0.03,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: width * 0.02,
                                            ),
                                            const Text(
                                              'Use the referral link below ',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            const Text(
                                              'to avail this offer.',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            RenderRepaintBoundary boundary =
                                                imgKey.currentContext!
                                                        .findRenderObject()
                                                    as RenderRepaintBoundary;
                                            ui.Image image =
                                                await boundary.toImage();
                                            ByteData? byteData =
                                                await image.toByteData(
                                                    format:
                                                        ui.ImageByteFormat.png);

                                            Uint8List img =
                                                byteData!.buffer.asUint8List();
                                            // ImageGallerySaver.saveImage(img);
                                            final path =
                                                getApplicationDocumentsDirectory();
                                            File file = File('$path/img.png');
                                            file.writeAsBytes(img);

                                            ShareExtend.share(
                                              file.path,
                                              "image",
                                            );
                                          },
                                          child: Container(
                                            height: height * 0.05,
                                            width: width * 0.6,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                'Share',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: height * 0.07,
                      width: width * 0.08,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.share,
                        size: 18,
                      ),
                    ),
                  ),
                ],
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
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Row(
                      children: [
                        Text(
                          '  ₹${detailModel!.hotelList1[selectindex].rent}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' ${detailModel!.hotelList1[selectindex].amount}',
                          style: const TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.04,
                      ),
                      Text(
                        '+ ₹${detailModel!.hotelList1[selectindex].tax} taxes & fees',
                        style:
                            const TextStyle(fontSize: 15, color: Colors.blue),
                      ),
                    ],
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
                      bookingList.add(detailModel!.hotelList1[selectindex]);
                      Navigator.of(context).pushNamed('/booking');
                    },
                    child: Container(
                      height: height * 0.1 - 35,
                      width: width * 0.5 + 18,
                      decoration: BoxDecoration(
                        color: mainRed,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Center(
                        child: Text(
                          'Book now & pay at hotel',
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
}

List bookingList = [];
List likeList = [];
bool favorite = false;
// Text scalar
