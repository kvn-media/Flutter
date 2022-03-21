import 'package:flutter/material.dart';
import 'package:lamp_apps/screen/lamp_screen.dart';
// import 'package:lamp_apps/state/lamp.dart';
// import 'package:lamp_apps/state/lamp_multi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LAMP APPS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LampScreen(),
    );
  }
}
