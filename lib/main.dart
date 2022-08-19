import 'package:flutter/material.dart';
import 'package:psg_hackathon_project/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
		fontFamily: "Avenir", 
      ),
      home: const Login(),
    );
  }
}
