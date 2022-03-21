import 'package:flutter/material.dart';
import 'package:navigation_sample/screen/page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAGE ONE'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PAGE ONE',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/page_two');
        },
        child: Icon(Icons.keyboard_arrow_right),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
