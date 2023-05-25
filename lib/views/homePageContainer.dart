import 'package:flutter/material.dart';

import 'homePageColumnContent.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.topRight;

class homePageContainer extends StatelessWidget {
  homePageContainer(this.colorOne, this.colorTwo, {super.key});

  final Color colorOne;
  final Color colorTwo;

  @override
  Widget build(context) {
    return Container(
      width: double.infinity, // Set width to match parent
      height: double.infinity, // Set height to match parent
      child: homepageContent(),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [colorOne, colorTwo],
            begin: startAlignment,
            end: endAlignment,
          )),
    );
  }
}
