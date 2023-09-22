import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.onTap, required this.buttonTitle});

  final String buttonTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}