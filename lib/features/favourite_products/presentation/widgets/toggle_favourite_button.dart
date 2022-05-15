import 'package:bakersoft_demo/core/common_product_features/domain/models/product.dart';
import 'package:bakersoft_demo/features/favourite_products/presentation/bloc/favourite_products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleFavouriteButton extends StatelessWidget {
  final Product product;
  const ToggleFavouriteButton({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Material(
        color: Colors.transparent,
        child: BlocBuilder<FavouriteProductsBloc, FavouriteProductsState>(
          builder: (context, state) {
            Widget _button = IconButton(
              onPressed: () {
                BlocProvider.of<FavouriteProductsBloc>(context).add(
                  FavouriteProductsEvent.addToFavourite(product: product),
                );
              },
              icon: const Icon(Icons.favorite_outline),
            );
            state.whenOrNull(
              success: ( _,_products) {
                if (_products.contains(product)) {
                  _button = IconButton(
                    onPressed: () {
                      BlocProvider.of<FavouriteProductsBloc>(context).add(
                        FavouriteProductsEvent.removeFromFavourite(
                            product: product),
                      );
                    },
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  );
                }
              },
            );
            return _button;
          },
        ),
      ),
    );
  }
}
