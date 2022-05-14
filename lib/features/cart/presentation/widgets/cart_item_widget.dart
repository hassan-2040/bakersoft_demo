import 'package:bakersoft_demo/core/domain/models/product.dart';
import 'package:bakersoft_demo/core/presentation/widgets/image_loader.dart';
import 'package:bakersoft_demo/core/utilities/app_config.dart';
import 'package:bakersoft_demo/core/utilities/constants.dart';
import 'package:flutter/material.dart';

class CartItemWidget extends StatelessWidget {
  final Product product;
  final int quantity;
  const CartItemWidget({
    required this.product,
    required this.quantity,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        leading: SizedBox(
          width: AppConfig.screenWidth * 0.2,
          height: AppConfig.screenHeight * 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: ImageLoader(
              imageUrl: product.imageUrl,
              placeHolderHeight: AppConfig.screenHeight * 0.2,
            ),
          ),
        ),
        title: Text(
          product.name,
          overflow: TextOverflow.ellipsis,
          style: AppConfig.getTextStyle(
            context: context,
            textSize: TextSize.large,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Text(
          '$quantity x €${product.price}',
          style: AppConfig.getTextStyle(
            context: context,
          ),
        ),
      ),
    );
  }
}
