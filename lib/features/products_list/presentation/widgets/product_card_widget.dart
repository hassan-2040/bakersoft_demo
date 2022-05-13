import 'package:bakersoft_demo/core/domain/models/product.dart';
import 'package:bakersoft_demo/core/presentation/widgets/image_loader.dart';
import 'package:bakersoft_demo/core/utilities/app_config.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  final Product product;
  const ProductCardWidget(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: ImageLoader(
                imageUrl: product.imageUrl,
                placeHolderHeight: AppConfig.screenHeight * 0.3,
              ),
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
