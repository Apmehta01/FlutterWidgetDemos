import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_custom_widgets/utils/helperSnackBar.dart';

import '../utils/helperButtonStyles.dart';

class CupertinoButtonWidget extends StatefulWidget {
  const CupertinoButtonWidget(this.CupertinoButtonText, {super.key});

  final CupertinoButtonText;

  @override
  State<CupertinoButtonWidget> createState() {
    return _CupertinoButtonWidget();
  }
}

class _CupertinoButtonWidget extends State<CupertinoButtonWidget> {
  void buttonClicked() {
    HelperSnackBar.showSnackbarwithContext(context,widget.CupertinoButtonText);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoButton.filled(
        child: Text(widget.CupertinoButtonText,style: TextStyle(
          fontSize: 12,
          color: Colors.white,
        ),),
        onPressed: buttonClicked,
      )
    );
  }
}
