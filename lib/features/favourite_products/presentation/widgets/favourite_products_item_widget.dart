
import 'package:bakersoft_demo/core/common_widgets/image_loader.dart';
import 'package:bakersoft_demo/core/utilities/app_config.dart';
import 'package:bakersoft_demo/core/utilities/constants.dart';
import 'package:bakersoft_demo/features/favourite_products/presentation/widgets/toggle_favourite_button.dart';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';
import 'package:flutter/material.dart';


class FavouriteProductsItemWidget extends StatelessWidget {
  final Product product;
  const FavouriteProductsItemWidget({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: AppConfig.screenWidth * 0.2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: ImageLoader(
                imageUrl: product.imageUrl,
                placeHolderHeight: AppConfig.screenHeight * 0.2,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  overflow: TextOverflow.ellipsis,
                  style: AppConfig.getTextStyle(
                    context: context,
                    textSize: TextSize.large,
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
                  ),
                ),
              ],
            ),
          ),
          ToggleFavouriteButton(
            product: product,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Material(
              color: Colors.transparent,
              child: IconButton(
                onPressed: () {
                  //TODO add to cart
                },
                icon: const Icon(
                  Icons.add_shopping_cart,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
