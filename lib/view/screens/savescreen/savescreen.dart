import 'package:flutter/material.dart';
import 'package:oyo_clone/utils/global.dart';
import '../../../utils/Color.dart';
import '../../../utils/imagelist.dart';
import '../DetailScreen/component/component.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0.1,
        backgroundColor: Colors.white,
      ),
      body: likeList.isEmpty
          ? Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 15,
                        top: 28,
                      ),
                      child: const Text(
                        'Your saved OYOs',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Column(
                  children: [
                    Image.asset(
                      'asset/Images/bg2.jpg',
                      height: 255,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 85,
                ),
                Column(
                  children: [
                    Text(
                      'No saved OYOs, yet!',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          height: height * 0.0018),
                    ),
                    Text(
                      'Start searching for OYO rooms now',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade600,
                          letterSpacing: -0.1,
                          height: 2),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/main');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: height * 0.059,
                        width: width * 0.390,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            'Explore OYOs',
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
            )
          : SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '   Your Saved',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Column(
                    children: [
                      ...List.generate(
                        likeList.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(
                              top: 13, right: 10, left: 10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('/detail').then(
                                    (value) => setState(() {}),
                                  );
                              selectIndex = index;
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: height * 0.25,
                                  width: width,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage(imageList[index]['img1']),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                      likeList[index]['ret'],
                                      style: const TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  likeList[index]['name'],
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  likeList[index]['address'],
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey.shade500),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '₹${likeList[index]['rent']}',
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.015,
                                    ),
                                    Text(
                                      '₹${likeList[index]['amount']}',
                                      style: const TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 13,
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.015,
                                    ),
                                    Text(
                                      '%${likeList[index]['par']} off',
                                      style: const TextStyle(
                                          fontSize: 13, color: Colors.green),
                                    ),
                                  ],
                                ),
                                Text(
                                  '+ ₹${likeList[index]['tax']} takes & fees',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 15,
                                  ),
                                ),
                                const Divider(),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
