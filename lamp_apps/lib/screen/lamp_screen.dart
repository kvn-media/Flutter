import 'package:flutter/material.dart';
import 'package:lamp_apps/model/lamp_view_model.dart';
import 'package:lamp_apps/state/bulb.dart';
import 'package:lamp_apps/state/lamp_panel.dart';
import 'package:provider/provider.dart';


class LampScreen extends StatelessWidget {
  const LampScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => LampViewModel(),
        builder: (context, child) {
          return Consumer<LampViewModel>(builder: (context, viewModel, child) {
            return Column(
              children: [
                Bulb(
                  isOn: viewModel.isLampOn,
                ),
                LampPanel(),
              ],
            );
          });
        });
  }
}