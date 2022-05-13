import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/products_list_bloc.dart';

class FailureWidget extends StatelessWidget {
  final String message;
  const FailureWidget({
    required this.message,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(message),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<ProductsListBloc>(context).add(const ProductsListEvent.get());
          },
          child: const Text('Retry'),
        ),
      ],
    );
  }
}
