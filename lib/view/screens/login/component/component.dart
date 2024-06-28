import 'package:flutter/material.dart';

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      elevation: 16,
      style: const TextStyle(
        color: Colors.black,
      ),
      underline: Container(
        height: 2,
        color: Colors.black,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

const List<String> list = <String>[
  'India',
  'Brazil',
  'Indonesia',
  'Malaysia',
  'Mexico',
  'Nepal',
  'Oman',
  'China',
  'Japan',
  'Thailand',
  'Singapore',
  'Philippines',
  'Vietnam',
  'Hong kong',
  'Malaysia',
  'Israel',
  'Taiwan',
  'Saudi Arabia',
  'Pakistan',
  'Iran',
  'Bangladesh',
  'Iraq',
  'Sri Lanka',
  'North Korea',
  'South Korea',
  'Qatar',
  'Bhutan',
  'Jordan',
  'Kuwait',
  'Macao'
];

Container button(double height, double width) {
  return Container(
    alignment: Alignment.center,
    height: height * 0.06,
    width: width,
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text(
      'Continue',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}