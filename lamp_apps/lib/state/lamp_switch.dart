import 'package:flutter/material.dart';

class LampSwitch extends StatelessWidget {
  final bool isDisabled;
  final String title;
  final Function switchCallBack;

  const LampSwitch({Key? key,
    this.isDisabled = false,
    this.title = 'Tombol',
    required this.switchCallBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: isDisabled ? null : () {
          switchCallBack();
        }, child: Text(title));
  }
}
