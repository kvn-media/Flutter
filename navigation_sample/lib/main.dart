import 'package:flutter/material.dart';
import 'package:navigation_sample/screen/page_one.dart';
import 'package:navigation_sample/screen/page_two.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/page_one',
      routes: {
        '/page_one': (context) => PageOne(),
        '/page_two': (context) => PageTwo()
      },
      // home: PageOne(),
    );
  }
}