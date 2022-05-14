import 'package:bakersoft_demo/core/utilities/app_config.dart';
import 'package:bakersoft_demo/core/utilities/constants.dart';
import 'package:bakersoft_demo/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartIconButton extends StatelessWidget {
  const CartIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        int _count = 0;
        state.whenOrNull(
          initial: ((itemCount) => _count = itemCount),
        );
        return Padding(
          padding: const EdgeInsets.all(3.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                onPressed: () {
                  //TODO navigate to cart page
                },
                icon: Icon(Icons.shopping_cart_outlined),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$_count',
                    style: AppConfig.getTextStyle(
                      context: context,
                      textColor: TextColor.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
