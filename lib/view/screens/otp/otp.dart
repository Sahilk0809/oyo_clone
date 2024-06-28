import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oyo_clone/view/screens/login/component/component.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  var txtOtp1 = TextEditingController();
  var txtOtp2 = TextEditingController();
  var txtOtp3 = TextEditingController();
  var txtOtp4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Otp Screen'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  otpField(controller: txtOtp1),
                  otpField(controller: txtOtp2),
                  otpField(controller: txtOtp3),
                  otpField(controller: txtOtp4),
                ],
              ),
              const Spacer(),
              GestureDetector(
                  onTap: () {
                    otp = txtOtp1.text +
                        txtOtp2.text +
                        txtOtp3.text +
                        txtOtp4.text;
                  },
                  child: button(height, width)),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox otpField({required controller}) {
    return SizedBox(
      height: 50,
      width: 50,
      child: TextField(
        textInputAction: TextInputAction.next,
        textAlign: TextAlign.center,
        controller: controller,
        keyboardType: TextInputType.phone,
        cursorColor: Colors.black,
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

String? otp;
