import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/products_list_bloc.dart';

class ProductsListFailureWidget extends StatelessWidget {
  final String message;
  const ProductsListFailureWidget({
    required this.message,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(message),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<ProductsListBloc>(context)
                .add(const ProductsListEvent.get());
          },
          child: const Text('Retry'),
        ),
      ],
    );
  }
}
