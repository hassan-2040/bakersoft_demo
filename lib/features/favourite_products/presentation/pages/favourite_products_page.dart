import 'package:flutter/material.dart';


class FavouriteProductsPage extends StatelessWidget {
  const FavouriteProductsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Products'),
      ),
      body: const Center(
        child: Text('Favourite Products'),
      ),
    );
  }
}