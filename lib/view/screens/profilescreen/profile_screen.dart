import 'package:flutter/material.dart';
import 'package:oyo_clone/view/screens/login/component/component.dart';

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
      backgroundColor: Colors.white,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
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
            const Row(
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
                buildTextFormField(
                    label: 'Full name', controller: txtAccountHolder),
                const SizedBox(
                  height: 32,
                ),
                buildTextFormField(
                    label: 'Mobile number', controller: txtNumber),
                const SizedBox(
                  height: 32,
                ),
                buildTextFormField(
                    label: 'Email address', controller: txtEmail),
                const SizedBox(
                  height: 32,
                ),
                buildTextFormField(label: 'Date of birth', controller: txtDate),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Text(
                  'GENDER',
                  style: TextStyle(
                      color: Colors.teal, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            radioButton('Male'),
            radioButton('Female'),
            radioButton('Prefer not to say'),
            SizedBox(
              height: height * 0.02,
            ),
            const Text(
              'Avail GST credit on booking',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            button(height, width, 'Add GSTIn details'),
          ],
        ),
      ),
    );
  }

  RadioListTile<dynamic> radioButton(genderType) {
    return RadioListTile(
      value: genderType,
      groupValue: isMale,
      onChanged: (value) {
        setState(() {
          isMale = value!;
        });
      },
      title: Text(genderType),
    );
  }

  TextFormField buildTextFormField(
      {required String label, required TextEditingController? controller}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.grey.shade500),
        contentPadding: const EdgeInsets.only(left: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
      ),
    );
  }
}

String isMale = 'Male';

var txtAccountHolder = TextEditingController();
var txtDate = TextEditingController();
var txtEmail = TextEditingController();
var txtNumber = TextEditingController();
