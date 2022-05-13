import 'package:bakersoft_demo/core/domain/models/product.dart';
import 'package:flutter/material.dart';

class ProductsListWidget extends StatelessWidget {
  final List<Product> products;
  const ProductsListWidget({
    required this.products,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final _product = products[index];
        return ListTile(
          title: Text(_product.name),
          subtitle: Text(_product.description),
          trailing: Text(_product.price.toString()),
        );
      },
    );
  }
}
