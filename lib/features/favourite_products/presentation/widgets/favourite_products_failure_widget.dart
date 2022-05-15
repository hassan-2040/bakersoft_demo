import 'package:flutter/material.dart';

class FavouriteProductsFailureWidget extends StatelessWidget {
  final String message;
  const FavouriteProductsFailureWidget( this.message ,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Error: $message'),
    );
  }
}
