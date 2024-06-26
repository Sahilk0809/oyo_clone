import 'package:flutter/material.dart';
import '../../../utils/global.dart';

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
                DropdownButton(
                  itemHeight: 50,
                  value: dropDownSelectedIndex,
                  borderRadius: BorderRadius.circular(20),
                  focusColor: const Color(0xff2a1710),
                  icon: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color(0xff8e8d8d),
                    size: 25,
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 0,
                      child: Text(
                        "    India                                   ",
                        style: TextStyle(
                            color: Color(0xff8e8d8d),
                            fontWeight: FontWeight.w400,
                            fontSize: 17),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 1,
                      child: Text(
                        "hii",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2a1710),
                            fontSize: 17),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 2,
                      child: Text(
                        "Chocolate",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2a1710),
                            fontSize: 17),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 3,
                      child: Text(
                        "Cappuccino",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2a1710),
                            fontSize: 17),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 4,
                      child: Text(
                        "Ice Coffee",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2a1710),
                            fontSize: 17),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 5,
                      child: Text(
                        "Hot Coffee",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2a1710),
                            fontSize: 17),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 6,
                      child: Text(
                        "Cold Cooffee",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2a1710),
                            fontSize: 17),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 7,
                      child: Text(
                        "Chocolate Drinks",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2a1710),
                            fontSize: 17),
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      dropDownSelectedIndex = value!;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
