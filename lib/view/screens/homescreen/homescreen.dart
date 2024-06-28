import 'package:flutter/material.dart';
import 'package:oyo_clone/utils/Color.dart';
import 'package:oyo_clone/utils/Location_List.dart';
import 'package:oyo_clone/utils/global.dart';

import '../../../modal/modal.dart';
import 'component/Drawer.dart';


DetailModel? detailModel;
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    detailModel = DetailModel.toList(hotelList);
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
         backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('OYO',style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w900,
          fontSize: 25,
          height: 1,
        ),),
      ),
      drawer: buildDrawer(height),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(locationList.length, (index)=>Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: height*0.1,
                          width: width*0.2,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                              image: DecorationImage(
                                image: AssetImage(locationList[index]['img']
                                ),
                                fit: BoxFit.cover,
                              )
                          ),
                        ),
                        Text('${locationList[index]['name']}',
                        style: TextStyle(
                          fontSize: 13,
                        ),),
                      ],
                    ),
                  ),)
                ],
              ),
            ),
            SizedBox(height: height*0.03,),
            Text(' Handpicked for You',style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(10,(index)=>Padding(
                    padding: const EdgeInsets.only(top: 13,right: 10,left: 10),
                    child: Column(
                      children: [
                        Container(
                          height: height*0.2,
                          width: width*0.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(hotelList[index]['img']),
                                fit: BoxFit.cover,
                              ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: mainRed,size: 15,),
                            Text('${detailModel!.hotelList1[index].rating}',style: TextStyle(
                              fontSize: 10,
                            ),),
                          ],
                        )
                      ],
                    ),
                  ),)
                ],
              ),
            )
          ],

        ),
      ),
    );
  }


}
