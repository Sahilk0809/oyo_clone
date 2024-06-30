import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_rounded,
          size: 27,
          color: Colors.black87,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Padding(
              padding: EdgeInsets.only(right: 15),
              child: Text(
                'Save',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Personal details',
                  style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold, height: 3),
                )
              ],
            ),
            Column(
              children: [
                buildTextFormField(label: 'Full name', controller: txtAccountHolder),
                SizedBox(
                  height: 32,
                ),
                buildTextFormField(
                    label: 'Mobile number', controller: txtNumber),
                SizedBox(
                  height: 32,
                ),
                buildTextFormField(
                    label: 'Email address', controller: txtEmail),
                SizedBox(
                  height: 32,
                ),
                buildTextFormField(label: 'Date of birth', controller: txtDate),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'GENDER',
                  style: TextStyle(
                      color: Colors.teal, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: height * 0.05,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  TextFormField buildTextFormField(
      {required String label, required TextEditingController? controller}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.grey.shade500),
        contentPadding: EdgeInsets.only(left: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
      ),
    );
  }
}

var txtAccountHolder = TextEditingController();
var txtDate = TextEditingController();
var txtEmail = TextEditingController();
var txtNumber = TextEditingController();