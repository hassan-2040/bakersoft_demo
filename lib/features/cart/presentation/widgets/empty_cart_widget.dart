import 'package:flutter/material.dart';

class EmptyCartWidget extends StatelessWidget {
  const EmptyCartWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No items in cart'),
    );
  }
}