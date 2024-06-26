import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children:[ Column(
        children: [
          Container(
            height: height*0.999,
            width: width*double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              image: DecorationImage(
                fit: BoxFit.cover,
                  image: AssetImage('asset/Images/logo1.avif'),),
            ),
          ),
        ],
       ),
          Padding(
            padding: const EdgeInsets.only(top: 220,left: 40),
            child: Container(
              height: height*0.6,
              width: width*0.8,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child:Container(
                height: height*0.1,
                width: width*0.1,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('asset/Images/loc.webp',),),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
