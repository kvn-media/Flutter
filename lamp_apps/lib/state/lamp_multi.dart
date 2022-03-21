import 'package:flutter/material.dart';
import 'bulb.dart';
import 'lamp_switch.dart';

class LampMulti extends StatefulWidget {
  const LampMulti({Key? key}) : super(key: key);

  @override
  _LampMultiState createState() => _LampMultiState();
}

class _LampMultiState extends State<LampMulti> {
  bool isLampOn = false;

  switchLamp() {
    setState(() {
      isLampOn = !isLampOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Bulb(
          isOn: isLampOn,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LampSwitch(
              isDisabled: isLampOn,
              title: 'ON',
              switchCallBack: switchLamp,
            ),
            LampSwitch(
              isDisabled: !isLampOn,
              title: 'OFF',
              switchCallBack: switchLamp,
            )
          ],
        ),
      ],
    );
  }
}