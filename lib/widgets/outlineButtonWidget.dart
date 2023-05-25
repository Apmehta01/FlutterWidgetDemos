import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/helperButtonStyles.dart';
import '../utils/helperSnackBar.dart';

class OutlineButtonWidget extends StatefulWidget {
  const OutlineButtonWidget(this.outlineButtonText, {super.key});

  final outlineButtonText;

  @override
  State<OutlineButtonWidget> createState() {
    return _OutlineButtonWidget();
  }
}

class _OutlineButtonWidget extends State<OutlineButtonWidget> {
  void buttonClicked() {

    HelperSnackBar.showSnackbarwithContext(context,widget.outlineButtonText);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        onPressed: buttonClicked,
        child: Text(widget.outlineButtonText),
        style: HelperButtonStyles.outlinedButtonStyle(Colors.white ,3.0,Colors.white,16,15.0,10),
        ),
    );
  }
}
