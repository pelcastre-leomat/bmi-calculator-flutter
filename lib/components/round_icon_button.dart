import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key,required this.icon, required this.onPressed}) : super(key: key);

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xff4c4f5e),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}