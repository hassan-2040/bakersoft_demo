import 'package:bakersoft_demo/core/common_cart_features/presentation/bloc/cart_bloc.dart';
import 'package:bakersoft_demo/core/common_product_features/domain/models/product.dart';
import 'package:bakersoft_demo/core/common_widgets/image_loader.dart';
import 'package:bakersoft_demo/core/utilities/app_config.dart';
import 'package:bakersoft_demo/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            child: Text(
              product.name,
              overflow: TextOverflow.ellipsis,
              style: AppConfig.getTextStyle(
                context: context,
                textSize: TextSize.large,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            '$quantity x €${product.price}',
            style: AppConfig.getTextStyle(
              context: context,
            ),
          ),
          RawMaterialButton(
            constraints: const BoxConstraints(),
            onPressed: () async {
              if (await AppConfig.showConfirmationDialog(
                title: 'Remove this item?',
                message: 'Do you wish to remove this item from your cart?',
              )) {
                BlocProvider.of<CartBloc>(context).add(
                  CartEvent.removeFromCart(product: product),
                );
              }
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
            fillColor: Colors.red,
            child: const Icon(
              Icons.remove,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
