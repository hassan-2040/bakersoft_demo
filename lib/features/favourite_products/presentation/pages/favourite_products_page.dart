import 'package:bakersoft_demo/features/favourite_products/presentation/bloc/favourite_products_bloc.dart';
import 'package:bakersoft_demo/features/favourite_products/presentation/widgets/favourite_products_failure_widget.dart';
import 'package:bakersoft_demo/features/favourite_products/presentation/widgets/favourite_products_loading_widget.dart';
import 'package:bakersoft_demo/features/favourite_products/presentation/widgets/toggle_favourite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteProductsPage extends StatelessWidget {
  const FavouriteProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Products'),
        actions: [
          IconButton(
            onPressed: () {
              BlocProvider.of<FavouriteProductsBloc>(context)
                  .add(const FavouriteProductsEvent.clearFavouriteProducts());
            },
            icon: const Icon(Icons.clear),
          ),
        ],
      ),
      body: BlocBuilder<FavouriteProductsBloc, FavouriteProductsState>(
        builder: (context, state) {
          late Widget _view;
          state.when(
            loading: () => _view = const FavouriteProductsLoadingWidget(),
            failure: (message) =>
                _view = FavouriteProductsFailureWidget(message),
            success: (_, products) => _view = ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text(product.description),
                  trailing: ToggleFavouriteButton(
                    product: product,
                  ),
                );
              },
            ),
          );
          return _view;
        },
      ),
    );
  }
}
