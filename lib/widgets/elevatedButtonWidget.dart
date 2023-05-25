import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_custom_widgets/utils/helperSnackBar.dart';

import '../utils/helperButtonStyles.dart';

class ElevatedButtonWidget extends StatefulWidget {
  const ElevatedButtonWidget(this.ElevatedButtonText, {super.key});

  final ElevatedButtonText;

  @override
  State<ElevatedButtonWidget> createState() {
    return _ElevatedButtonWidget();
  }
}

class _ElevatedButtonWidget extends State<ElevatedButtonWidget> {
  void buttonClicked() {
    HelperSnackBar.showSnackbarwithContext(context,widget.ElevatedButtonText);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: buttonClicked,
        child: Text(widget.ElevatedButtonText),
        style:HelperButtonStyles.ElevatedButtonStyle(Colors.blue, Colors.white,16,15.0,8)
      ),
    );
  }
}
