import 'package:bakersoft_demo/core/utilities/app_config.dart';
import 'package:bakersoft_demo/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';
import 'package:bakersoft_demo/features/show_product/presentation/bloc/product_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddToCartButton extends StatelessWidget {
  final Product product;
  const AddToCartButton(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
      builder: (context, state) {
        late int _quantity;
        state.when(
          initial: (quantity) => _quantity = quantity,
        );
        return Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: BlocListener<CartBloc, CartState>(
                listener: (context, state) {
                  state.whenOrNull(
                    addToCartSuccess: () {
                      //when item is added to cart, reset quantity
                      AppConfig.showSuccessSnackBar(
                        snackBarText: 'Item added to cart!',
                      );
                      BlocProvider.of<ProductDetailsBloc>(context)
                          .add(const ProductDetailsEvent.resetQuantity());
                    },
                  );
                },
                child: ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<CartBloc>(context).add(CartEvent.addToCart(
                      product: product,
                      quantity: _quantity,
                    ));
                  },
                  child: const Text('Add to cart'),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        );
      },
    );
  }
}
