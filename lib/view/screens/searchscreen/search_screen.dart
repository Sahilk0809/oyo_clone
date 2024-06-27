import 'package:flutter/material.dart';
import 'package:oyo_clone/utils/global.dart';

import '../../../modal/modal.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List display = [];

  @override
  void initState() {
    display = hotelList;
    super.initState();
  }

  void updateList(String change) {
    List result = [];

    if (change.isEmpty) {
      result = hotelList;
    } else {
      result = hotelList
          .where((user) =>
              user["city"].toLowerCase().contains(change.toLowerCase()))
          .toList();
    }
    setState(() {
      display = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) => updateList(value),
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1.5, color: Colors.black),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    hintText: 'Search your favourite hotels here'),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: (display.length > 0)
                    ? ListView.builder(
                        itemCount: display.length,
                        itemBuilder: (context, index) => ListTile(
                          contentPadding: EdgeInsets.all(8),
                          title: Text('${display[index]["name"]}'),
                          subtitle: Text('${display[index]["city"]}'),
                          trailing: Text(
                            '${display[index]["ret"]}',
                            style: const TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      )
                    : const Center(
                        child: Text(
                          'No result found!',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
