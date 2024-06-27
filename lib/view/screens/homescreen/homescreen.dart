import 'package:flutter/material.dart';

import 'component/Drawer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
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
      body: Column(

      ),
    );
  }


}
