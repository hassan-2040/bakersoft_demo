
import 'package:bakersoft_demo/core/utilities/app_config.dart';
import 'package:bakersoft_demo/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:bakersoft_demo/features/cart/presentation/widgets/cart_failure_widget.dart';
import 'package:bakersoft_demo/features/cart/presentation/widgets/cart_item_widget.dart';
import 'package:bakersoft_demo/features/cart/presentation/widgets/checkout_column_widget.dart';
import 'package:bakersoft_demo/features/cart/presentation/widgets/empty_cart_widget.dart';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              if (await AppConfig.showConfirmationDialog(
                title: 'Clear Cart?',
                message: 'Are you sure you wish to clear your cart?',
              )) {
                BlocProvider.of<CartBloc>(context)
                    .add(const CartEvent.clearCart());
              }
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          late Widget _view;
          state.when(
            initial: (
              int cartItemsCount,
              double totalPrice,
              Map<Product, int> cartItems,
            ) {
              if (cartItems.isEmpty) {
                _view = const EmptyCartWidget();
              } else {
                final _products = cartItems.keys.toList();
                final _quantities = cartItems.values.toList();
                _view = Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: _products.length,
                        itemBuilder: (context, index) {
                          final _product = _products[index];
                          final _quantity = _quantities[index];
                          return CartItemWidget(
                            product: _product,
                            quantity: _quantity,
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 5),
                    CheckoutColumnWidget(totalPrice: totalPrice),
                  ],
                );
              }
            },
            failure: (String errorMessage) {
              _view = CartFailureWidget(errorMessage);
            },
          );
          return _view;
        },
      ),
    );
  }
}
