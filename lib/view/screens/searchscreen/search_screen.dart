import 'package:flutter/material.dart';
import 'package:oyo_clone/utils/Color.dart';
import 'package:oyo_clone/utils/global.dart';
import 'package:oyo_clone/utils/imagelist.dart';
import 'package:oyo_clone/view/screens/DetailScreen/component/component.dart';

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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                onChanged: (value) => updateList(value),
                cursorColor: Colors.black,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1.5,
                      color: Colors.black87,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: 'Eg :- Surat',
                  prefixIcon: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(Icons.arrow_back)),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Marquee(
                animationDuration: const Duration(seconds: 15),
                backDuration: const Duration(seconds: 15),
                child: Row(
                  children: [
                    ...List.generate(
                      10,
                      (index) => Container(
                        margin: const EdgeInsets.all(10),
                        height: height * 0.2,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(imageList[index]['img3']),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const Text(
                'Frequent Searches',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Expanded(
                child: (display.length > 0)
                    ? ListView.builder(
                        itemCount: display.length,
                        itemBuilder: (context, index) => ListTile(
                          contentPadding: const EdgeInsets.all(2),
                          title: Text(
                            '${display[index]["name"]}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text('${display[index]["city"]}'),
                          trailing: Text(
                            '⭐ ${display[index]["ret"]}',
                            style: TextStyle(
                              color: mainRed,
                              letterSpacing: 1,
                              fontSize: 16,
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
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: 1,
        //   unselectedItemColor: Colors.grey,
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: const Icon(
        //         Icons.home,
        //       ),
        //       label: '',
        //       activeIcon: Icon(
        //         Icons.home,
        //         color: mainRed,
        //       ),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: const Icon(Icons.search),
        //       activeIcon: Icon(
        //         Icons.search,
        //         color: mainRed,
        //       ),
        //       label: '',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: const Icon(Icons.home_repair_service_outlined),
        //       activeIcon: Icon(
        //         Icons.home_repair_service_outlined,
        //         color: mainRed,
        //       ),
        //       label: '',
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
