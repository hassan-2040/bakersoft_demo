import 'package:bakersoft_demo/core/presentation/blocs/cart_bloc/cart_bloc.dart';
import 'package:bakersoft_demo/core/utilities/app_config.dart';
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
      body: Center(
        child: Text('Cart Page'),
      ),
    );
  }
}
