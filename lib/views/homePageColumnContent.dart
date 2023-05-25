import 'package:flutter/material.dart';

import '../widgets/ElevatedButtonWidget.dart';
import '../widgets/cupertinoButtonWidget.dart';
import '../widgets/dropDownButtonWidget.dart';
import '../widgets/dropDownButtonWidget.dart';
import '../widgets/iconButtonWidget.dart';
import '../widgets/imageWidget.dart';
import '../widgets/outlineButtonWidget.dart';

class homepageContent extends StatelessWidget {
  final activeDiceImage = 'assets/images/dice-2.png';
  final ElevatedButtonText = 'Elevated Button';
  final OutlineButtonText = 'OutLine Button';
  final IconButtonText = 'Icon Button';
  final CupertinoButtonText = 'Cupertino Button';

  @override
  Widget build(context) {
    return Column(
      children: [
        const SizedBox(
          height: 10.0,
        ),
        IconButtonWidget(IconButtonText),
        imageWidget(activeDiceImage),
        const SizedBox(
          height: 15.0,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButtonWidget(ElevatedButtonText),
          const SizedBox(
            width: 20.0,
          ),
          OutlineButtonWidget(OutlineButtonText),
        ]),
        const SizedBox(
          height: 20.0,
        ),
        DropDownButtonWidget(),
        const SizedBox(
          height: 20.0,
        ),
        CupertinoButtonWidget(CupertinoButtonText),
      ],
    );
  }
}
