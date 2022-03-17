import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 300,
          height: 300,
          color: Colors.amberAccent,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.lightGreen,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.black,
        ),
      ],
    );
  }
}
