import 'package:flutter/material.dart';

class QuantityButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;
  const QuantityButton({
    required this.icon,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints(),
      onPressed: onPressed,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3),
      ),
      fillColor: Colors.white,
      child: icon,
    );
  }
}
