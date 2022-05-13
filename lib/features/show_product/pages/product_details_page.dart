import 'package:bakersoft_demo/core/domain/models/product.dart';
import 'package:bakersoft_demo/core/presentation/widgets/image_loader.dart';
import 'package:bakersoft_demo/core/utilities/app_config.dart';
import 'package:bakersoft_demo/core/utilities/constants.dart';
import 'package:bakersoft_demo/features/show_product/widgets/quantity_button.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;
  const ProductDetailsPage(
    this.product, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: product.id,
              child: ImageLoader(
                imageUrl: product.imageUrl,
                height: AppConfig.screenHeight * 0.5,
                placeHolderHeight: AppConfig.screenHeight * 0.5,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                product.name,
                overflow: TextOverflow.visible,
                style: AppConfig.getTextStyle(
                  context: context,
                  fontWeight: FontWeight.bold,
                  textSize: TextSize.main,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    '€${product.price}',
                    style: AppConfig.getTextStyle(
                      context: context,
                      textSize: TextSize.sub,
                    ),
                  ),
                ),
                const QuantityButton(icon: Icon(Icons.remove)),
                const SizedBox(
                  width: 5,
                ),
                const Text('1'),
                const SizedBox(
                  width: 5,
                ),
                const QuantityButton(icon: Icon(Icons.add)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
