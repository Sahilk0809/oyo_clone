import 'package:flutter/material.dart';
import 'package:oyo_clone/utils/Color.dart';
import 'package:oyo_clone/utils/global.dart';

import 'component/component.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Finish Creating account',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                inputField(
                    hintText: 'Full Name',
                    labelText: 'Full Name',
                    controller: txtName),
                SizedBox(
                  height: height * 0.04,
                ),
                inputField(
                    hintText: 'Referral Code',
                    labelText: 'Referral Code',
                    controller: txtReferral),
                SizedBox(
                  height: height * 0.04,
                ),
                inputField(
                    hintText: 'Contact',
                    labelText: 'Contact',
                    controller: txtContact),
                SizedBox(
                  height: height * 0.04,
                ),
                inputField(
                  hintText: 'Email Address (Optional)',
                  labelText: 'Email Address (Optional)',
                  controller: txtEmail,
                ),
                SizedBox(
                  height: height * 0.036,
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.blueAccent,
                      value: check,
                      onChanged: (value) {
                        setState(() {
                          check = value!;
                        });
                      },
                    ),
                    const Column(
                      children: [
                        Text(
                          'I would like to receive  marketing offers and',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'promotional communications from OYO.',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.26,
                ),
                Container(
                  height: height * 0.06,
                  width: width,
                  decoration: BoxDecoration(
                    color: mainRed,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'Create account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField inputField(
      {required hintText, required labelText, required controller}) {
    return TextFormField(
      controller: controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1,
            color: Colors.grey.shade500,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 1.5,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
