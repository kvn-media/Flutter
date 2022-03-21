
import 'package:flutter/material.dart';
import 'package:lamp_apps/model/lamp_view_model.dart';
import 'package:provider/provider.dart';
import 'lamp_switch.dart';

class LampPanel extends StatelessWidget {
  const LampPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LampViewModel>(
        builder: (context, viewModel, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LampSwitch(
                isDisabled: viewModel.isLampOn,
                title: 'ON',
                switchCallBack: viewModel.switchLamp,
              ),
              LampSwitch(
                isDisabled: !viewModel.isLampOn,
                title: 'OFF',
                switchCallBack: viewModel.switchLamp,
              )
            ],
          );
        });
  }
}