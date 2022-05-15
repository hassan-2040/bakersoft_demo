import 'package:flutter/material.dart';

class FavouriteProductsLoadingWidget extends StatelessWidget {
  const FavouriteProductsLoadingWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Center(child: CircularProgressIndicator());
  }
}