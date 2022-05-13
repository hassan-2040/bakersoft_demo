import 'package:bakersoft_demo/core/domain/models/product.dart';
import 'package:bakersoft_demo/core/presentation/widgets/image_loader.dart';
import 'package:bakersoft_demo/core/utilities/app_config.dart';
import 'package:bakersoft_demo/core/utilities/constants.dart';
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
      ),
      body: SingleChildScrollView(
        child: Column(
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
            Text(
              product.name,
              overflow: TextOverflow.ellipsis,
              style: AppConfig.getTextStyle(
                context: context,
                fontWeight: FontWeight.bold,
                textSize: TextSize.main,
              ),
            ),
            const SizedBox(
              height: 10,
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
      ),
    );
  }
}
