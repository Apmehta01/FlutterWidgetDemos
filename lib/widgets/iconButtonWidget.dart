import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/helperButtonStyles.dart';
import '../utils/helperSnackBar.dart';

class IconButtonWidget extends StatefulWidget {
  const IconButtonWidget(this.iconButtonText, {super.key});

  final iconButtonText;

  @override
  State<IconButtonWidget> createState() {
    return _IconButtonWidget();
  }
}

class _IconButtonWidget extends State<IconButtonWidget> {
  void buttonClicked() {
    HelperSnackBar.showSnackbarwithContext(context,widget.iconButtonText);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(Icons.emoji_emotions_outlined),
        onPressed: buttonClicked,
        color: Colors.white,
        iconSize: 30.0,
        tooltip: 'Favorite',
      )
    );
  }
}
