import 'package:flutter/material.dart';
import 'package:oyo_clone/utils/global.dart';

class Createaccount extends StatefulWidget {
  const Createaccount({super.key});

  @override
  State<Createaccount> createState() => _CreateaccountState();
}

class _CreateaccountState extends State<Createaccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Finish Creating account',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Field(hintText: 'Full Name',lableText: 'Full Name',controler: txtName),
              SizedBox(height: 20,),
              Field(hintText: 'Referral Code',lableText: 'Referral Code',controler: txtReferral),
              SizedBox(height: 20,),
              Field(hintText: 'Contact',lableText: 'Contact',controler: txtContact),
              SizedBox(height: 20,),
              Field(hintText: 'Email Address (Optional)',lableText: 'Email Address (Optional)',controler: txtContact),
              Text('I would like to')
            ],
          ),
        ),
      ),
    );
  }

  TextFormField Field({required hintText,required lableText,required controler}) {
    return TextFormField(
              controller: controler,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  hintText: hintText,
                  labelText: lableText,
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1,color: Colors.grey.shade500),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1.5,color: Colors.black),
                  )
              ),
            );
  }
}
