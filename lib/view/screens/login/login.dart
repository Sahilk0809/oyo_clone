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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 280,),
                Text(
                  'Welcome aboard!',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Enjoy Extra rs100 off on your',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'first stay! 🎉',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: txtContact,
                  maxLength: 10,
                  cursorColor: Colors.black,
                   keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Enter mobile number',
                    labelText: 'Enter mobile number',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(width: 1,color: Colors.grey.shade500),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(width: 1.7),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: height * 0.06,
                  width: width * 1,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text('Continue',style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
                SizedBox(height: 15,),
                Center(child: Text('OR',style: TextStyle(fontSize: 17),)),
                SizedBox(height: 15,),
                Container(
                  height: height * 0.06,
                  width: width * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1,color: Colors.black)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Image.asset('asset/Images/google_logo.png',height: 37,),
                      ),
                      Text('Continue with Google',style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Center(
                  child: Text("I'll Signup Later",style: TextStyle(
                    color: Colors.blue,
                  ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
