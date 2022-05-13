import 'package:bakersoft_demo/core/domain/models/product.dart';
import 'package:bakersoft_demo/core/utilities/app_config.dart';
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
        return _ProductCardWidget(products[index]);
      },
    );
  }
}

class _ProductCardWidget extends StatelessWidget {
  final Product product;
  const _ProductCardWidget(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
              height: AppConfig.screenHeight * 0.2,
              width: double.infinity,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            product.name,
            overflow: TextOverflow.ellipsis,
            style: AppConfig.getTextStyle(
              context: context,
              fontWeight: FontWeight.bold,

            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '€${product.price}',
            style: AppConfig.getTextStyle(
              context: context,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
