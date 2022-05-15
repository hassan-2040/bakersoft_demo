import 'package:bakersoft_demo/core/common_product_features/domain/models/product.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/use_cases/check_is_favourite.dart';
import 'package:bakersoft_demo/features/favourite_products/presentation/bloc/favourite_products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteButton extends StatelessWidget {
  final Product product;
  final CheckIsFavourite checkIsFavourite;
  const FavouriteButton({
    required this.product,
    required this.checkIsFavourite,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (checkIsFavourite(product)) {
          BlocProvider.of<FavouriteProductsBloc>(context).add(
            FavouriteProductsEvent.removeFromFavourite(product: product),
          );
        } else {
          BlocProvider.of<FavouriteProductsBloc>(context).add(
            FavouriteProductsEvent.addToFavourite(product: product),
          );
        }
      },
      icon: BlocBuilder<FavouriteProductsBloc, FavouriteProductsState>(
        builder: (context, state) {
          return checkIsFavourite(product)
              ? const Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
              : const Icon(Icons.favorite_border);
        },
      ),
    );
  }
}
