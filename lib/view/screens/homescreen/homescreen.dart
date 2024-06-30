import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oyo_clone/utils/Color.dart';
import 'package:oyo_clone/utils/Location_List.dart';
import 'package:oyo_clone/utils/global.dart';
import 'package:oyo_clone/utils/imagelist.dart';
import 'package:oyo_clone/view/screens/DetailScreen/component/component.dart';
import 'package:oyo_clone/view/screens/homescreen/component/component.dart';
import '../../../modal/modal.dart';
import '../NeedHelp/HelpScreen.dart';
import '../bookingscreen/bookingscreen.dart';
import '../searchscreen/search_screen.dart';
import '../servicescreen/servicescreen.dart';
import 'component/Drawer.dart';

DetailModel? detailModel;

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  @override
  Widget build(BuildContext context) {
    detailModel = DetailModel.toList(hotelList);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'OYO',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 25,
            height: 1,
          ),
        ),
      ),
      drawer: buildDrawer(height, context),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      locationList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: height * 0.1,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      locationList[index]['img'],
                                    ),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Text(
                              '${locationList[index]['name']}',
                              style: const TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              const Text(
                ' Handpicked for You',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      10,
                      (index) => Padding(
                        padding:
                            const EdgeInsets.only(top: 13, right: 10, left: 10),
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
                                height: height * 0.2,
                                width: width * 0.6,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(imageList[index]['img1']),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: IconButton(
                                        icon: Icon(
                                          hotelList[index]['like']
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: hotelList[index]['like']
                                              ? Colors.red
                                              : Colors.white,
                                          size: 25,
                                        ),
                                        onPressed: () {
                                          // if(hotelList[index]['like']=true)
                                          // {
                                          //   likeList.add(hotelList[index]);
                                          // }
                                          setState(() {
                                            hotelList[index]['like'] =
                                                !hotelList[index]['like'];
                                            hotelList[selectIndex]['like']
                                                ? likeList
                                                    .add(hotelList[selectIndex])
                                                : likeList
                                                    .removeAt(selectIndex);
                                          });
                                        },
                                      ),
                                    ),
                                  ],
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
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Text(
                                    '${detailModel!.hotelList1[index].rating}',
                                    style: const TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Text(
                                    '(${noPerson[index]})',
                                    style: const TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                '${detailModel!.hotelList1[index].name}',
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '${detailModel!.hotelList1[index].location}',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey.shade500),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '₹${detailModel!.hotelList1[index].rent}',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.015,
                                  ),
                                  Text(
                                    '₹${detailModel!.hotelList1[index].amount}',
                                    style: const TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 13,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.015,
                                  ),
                                  Text(
                                    '%${detailModel!.hotelList1[index].per} off',
                                    style: const TextStyle(
                                        fontSize: 13, color: Colors.green),
                                  ),
                                ],
                              ),
                              Text(
                                '+ ₹${detailModel!.hotelList1[index].tax} takes & fees',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              const Text(
                ' OYO serviced premium hotels',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 15,
                        top: 10,
                      ),
                      child: Container(
                        height: height * 0.3,
                        width: width * 0.6,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'asset/Images/Premium1.jpeg',
                              ),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    ...List.generate(
                        premium.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(
                                  right: 15, top: 10, left: 10),
                              child: Container(
                                height: height * 0.3,
                                width: width * 0.38,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('${premium[index]}'),
                                      fit: BoxFit.cover,
                                    ),
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ))
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              const Text(
                ' Continue your search',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...List.generate(
                        7,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: height * 0.09,
                                width: width * 0.5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('${locationList[index]['name']}'),
                                        const Text(
                                          '28 Jun - Today',
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.1,
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 10,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                            ))
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              const Text(
                ' Best offer for you',
                style: TextStyle(
                  fontSize: 21,
                  letterSpacing: -0.4,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        template.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(
                                  right: 15, top: 10, left: 10),
                              child: Container(
                                height: height * 0.25,
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('${template[index]}'),
                                      fit: BoxFit.cover,
                                    ),
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: height * 0.055,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black, width: 0.9),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'View all offers',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, letterSpacing: -0.3),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' 150 OYOs found',
                    style: TextStyle(
                      fontSize: 21,
                      letterSpacing: -0.4,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Price per room per night',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: height * 0.05,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Sort'),
                          Icon(
                            Icons.format_list_numbered_rtl_sharp,
                            color: Colors.black87,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: height * 0.05,
                      width: width * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Locality'),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black87,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: height * 0.05,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Price'),
                          Icon(
                            Icons.arrow_downward_outlined,
                            color: Colors.black87,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Column(
                children: [
                  ...List.generate(
                    20,
                    (index) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/detail');
                          selectIndex = index;
                        },
                        child: Column(
                          children: [
                            Container(
                              height: height * 0.25,
                              width: width * 0.9,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(imageList[index]['img1']),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: IconButton(
                                      icon: Icon(
                                        hotelList[index]['like']
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: hotelList[index]['like']
                                            ? Colors.red
                                            : Colors.white,
                                        size: 25,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          hotelList[index]['like'] =
                                              !hotelList[index]['like'];
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: mainRed,
                                      size: 18,
                                    ),
                                    SizedBox(
                                      width: width * 0.02,
                                    ),
                                    Text(
                                      '${detailModel!.hotelList1[index].rating}',
                                      style: const TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.02,
                                    ),
                                    Text(
                                      '(${noPerson[index]})',
                                      style: const TextStyle(
                                          fontSize: 13, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  '${detailModel!.hotelList1[index].name}',
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  '${detailModel!.hotelList1[index].address}',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey.shade500),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.accessibility_new,
                                      color: Colors.purple,
                                      size: 15,
                                    ),
                                    Text(
                                      ' Couples are welcome',
                                      style: TextStyle(
                                        color: Colors.purple,
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.thumb_up_off_alt,
                                      color: Colors.purple,
                                      size: 15,
                                    ),
                                    Text(
                                      ' Rated high for cleanliness',
                                      style: TextStyle(
                                        color: Colors.purple,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '₹${detailModel!.hotelList1[index].rent}',
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.015,
                                    ),
                                    Text(
                                      '₹${detailModel!.hotelList1[index].amount}',
                                      style: const TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 13,
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.015,
                                    ),
                                    Text(
                                      '%${detailModel!.hotelList1[index].per} off',
                                      style: const TextStyle(
                                          fontSize: 13, color: Colors.green),
                                    ),
                                  ],
                                ),
                                Text(
                                  '+ ₹${detailModel!.hotelList1[index].tax} takes & fees',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.025,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
