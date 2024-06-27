import 'package:flutter/material.dart';

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
        leading: const Icon(
          Icons.arrow_back,
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
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
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 150,
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
              Container(
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
              )
            ],
          )
        ],
      ),
    );
  }
}
