import 'package:flutter/material.dart';
import 'package:navigation_sample/screen/page_one.dart';

class PageTwo extends StatelessWidget {
  const PageTwo ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
        centerTitle: true,
        leading: Text(''),
      ),
      body: Center(
        child: Text(
          'Page Two',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/page_one');
        },
        child: Icon(Icons.keyboard_arrow_left),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}