import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(30),
        height: double.infinity,
        width: double.infinity,
        color: Colors.amber,
        child: Image.asset(
          "images/Milize.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}