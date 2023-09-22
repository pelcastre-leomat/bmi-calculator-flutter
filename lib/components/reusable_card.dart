import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.color, this.cardChild, this.onPress, this.padding});
  final Color color;
  final Widget? cardChild;
  final Function()? onPress;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        padding: EdgeInsets.only(left: padding ?? 0, right: padding ?? 0),
        decoration: BoxDecoration(
            color: color,
            borderRadius:BorderRadius.circular(10)
        ),
        child: cardChild,
      ),
    );
  }
}