import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Stack(
            children: [
             Container(
              height: height * 0.4,
              width: width * double.infinity,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
            ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 250),
                child: Container(
                  height: height * 0.3,
                  width: width * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
            ],
          ),
        ],
      ),
    );
  }
}
