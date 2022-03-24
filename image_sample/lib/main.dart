import 'package:flutter/material.dart';


import 'appform_widget.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Enigma'),
          centerTitle: true,
        ),
        body: const AppForm(),
        // body: Center(
        //   child: Container(
        //     margin: EdgeInsets.all(30),
        //     height: double.infinity,
        //     width: double.infinity,
        //     color: Colors.amber,
        //     child: Image.network(
        //         "images/Milize.jpg",
        //         // "https://picsum.photos/200/300",
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}


