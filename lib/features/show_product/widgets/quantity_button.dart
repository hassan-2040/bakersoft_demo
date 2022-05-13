import 'package:flutter/material.dart';

class QuantityButton extends StatelessWidget {
  final Widget icon;
  const QuantityButton({
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints(),
      onPressed: () {},
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3),
      ),
      fillColor: Colors.white,
      child: icon,
    );
  }
}
