import 'package:flutter/material.dart';
import 'package:oyo_clone/utils/global.dart';

import '../../../modal/modal.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

void updateList(String value) {
  List display = [];
  
}

DetailModel? detailModel;
DetailModel2? detailModel2;

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    detailModel = DetailModel.toList(hotelList);
    detailModel2 = DetailModel2.toList(hotelList2);
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
                child: ListView.builder(
                  itemCount: detailModel!.hotelList1.length,
                  itemBuilder: (context, index) => ListTile(
                    contentPadding: EdgeInsets.all(8),
                    title: Text(detailModel!.hotelList1[index].name!),
                    subtitle:
                        Text('Rs. ${detailModel!.hotelList1[index].rent!}/-'),
                    trailing: Text(
                      detailModel!.hotelList1[index].rating.toString(),
                      style: const TextStyle(
                        color: Colors.amber,
                      ),
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
