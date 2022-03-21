import 'package:flutter/material.dart';

class Bulb extends StatelessWidget {
  final bool isOn;

  const Bulb({Key? key, this.isOn = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64.0,
      height: 64.0,
      decoration: BoxDecoration(
          color: isOn ? Colors.orange : null,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.orange)),
    );
  }
}