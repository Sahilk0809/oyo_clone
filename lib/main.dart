import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:oyo_clone/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyCbiNTmqOWs32frqOHasTvhjRmDFN_IGrM',
      appId: '1:360744678302:android:00e85a4584b952d1eb1c8f',
      messagingSenderId: '360744678302',
      projectId: 'fir-project-auth-2857f',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: MyRoutes.routes,
    );
  }
}
