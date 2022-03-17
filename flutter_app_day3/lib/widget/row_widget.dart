import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.purple,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.redAccent,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.deepOrange,
        ),
      ],
    );
  }
}
