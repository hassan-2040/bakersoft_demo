import 'package:bakersoft_demo/core/utilities/app_config.dart';
import 'package:bakersoft_demo/features/products_list/presentation/bloc/products_list_bloc.dart';
import 'package:bakersoft_demo/features/products_list/presentation/widgets/failure_widget.dart';
import 'package:bakersoft_demo/features/products_list/presentation/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/products_list_widget.dart';

class ProductsListPage extends StatelessWidget {
  const ProductsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConfig().setRootContext(context);
    return Scaffold(
      body: Column(children: [
        Container(
          color: Theme.of(context).primaryColor,
          height: AppConfig.safeAreaTop,
        ),
        Expanded(
          child: BlocBuilder<ProductsListBloc, ProductsListState>(
            builder: (context, state) {
              late Widget _view;
              state.when(
                loading: () {
                  _view = const LoadingWidget();
                },
                success: (_products) {
                  _view = ProductsListWidget(products: _products);
                },
                failure: (_errorMessage) {
                  _view = FailureWidget(message: _errorMessage);
                },
              );
              return _view;
            },
          ),
        ),
      ]),
    );
  }
}
