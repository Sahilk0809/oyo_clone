import 'package:flutter/material.dart';
import '../../../utils/global.dart';
import 'component/component.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: height * 0.12,
                  width: width * 0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/Images/oyo.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: DropdownButtonExample(),
                ),
              ],
            ),
            Text('Welcome aboard!\nEnjoy Extra rs100 off on your\n'),
          ],
        ),
      ),
    );
  }
}
