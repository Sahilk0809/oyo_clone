import 'package:flutter/material.dart';
import 'package:oyo_clone/utils/Color.dart';
import 'package:oyo_clone/utils/global.dart';

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
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 1.5, color: Colors.black),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: 'Search your favourite hotels here',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: (display.length > 0)
                    ? ListView.builder(
                        itemCount: display.length,
                        itemBuilder: (context, index) => ListTile(
                          contentPadding: const EdgeInsets.all(8),
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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.home,
              ),
              label: '',
              activeIcon: Icon(
                Icons.home,
                color: mainRed,
              ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.search),
              activeIcon: Icon(
                Icons.search,
                color: mainRed,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_repair_service_outlined),
              activeIcon: Icon(
                Icons.home_repair_service_outlined,
                color: mainRed,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
