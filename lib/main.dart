import 'package:flutter/material.dart';
import 'package:oyo_clone/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: MyRoutes.routes,
    );
  }
}
int i =0;
