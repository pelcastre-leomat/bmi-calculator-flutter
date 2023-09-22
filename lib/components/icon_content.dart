import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key, this.label, this.icon});

  final String? label;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label??'',
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}