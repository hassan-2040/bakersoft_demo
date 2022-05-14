import 'package:flutter/material.dart';

class CartFailureWidget extends StatelessWidget {
  final String message;
  const CartFailureWidget(this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message,),);
  }
}
