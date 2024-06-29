import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oyo_clone/view/screens/login/component/component.dart';
import 'package:oyo_clone/view/screens/login/login.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  var txtOtp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
              Pinput(
                onChanged: (value) {
                  code = value;
                },
                length: 6,
                showCursor: true,
              ),
              SizedBox(
                height: height * 0.43,
              ),
              GestureDetector(
                onTap: () async {
                  try {
                    PhoneAuthCredential credential =
                        PhoneAuthProvider.credential(
                            verificationId: verify, smsCode: code);
                    await auth.signInWithCredential(credential);
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/home',
                      (route) => false,
                    );
                  } catch (e) {
                    print('Wrong otp');
                  }
                },
                child: button(height, width, 'Verify your phone number'),
              ),
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

var code = '';

final FirebaseAuth auth = FirebaseAuth.instance;
