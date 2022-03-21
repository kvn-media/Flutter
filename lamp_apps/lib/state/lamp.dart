import 'package:flutter/material.dart';

class Lamp extends StatefulWidget {
  const Lamp({Key? key}) : super(key: key);

  @override
  _LampState createState() => _LampState();
}

class _LampState extends State<Lamp> {
  bool isLampOn = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 64.0,
            height: 64.0,
            decoration: BoxDecoration(
                color: isLampOn ? Colors.orange : null,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.orange)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isLampOn = true;
                      print(isLampOn);
                    });
                  },
                  child: const Text('Start')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isLampOn = false;
                      print(isLampOn);
                    });
                  },
                  child: const Text('Stop')),
            ],
          ),
        ],
      ),
    );
  }
}