import 'package:flutter/material.dart';

class Helpscreen extends StatefulWidget {
  const Helpscreen({super.key});

  @override
  State<Helpscreen> createState() => _HelpscreenState();
}

class _HelpscreenState extends State<Helpscreen> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        body:Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(
            height: double.infinity,
            width:double.infinity,
            decoration: const BoxDecoration(
                image:DecorationImage(
                  image: AssetImage('asset/Images/Help.jpeg'),
                )
            ),
          ),
        ),
      );
  }
  }

