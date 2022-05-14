import 'package:bakersoft_demo/core/domain/models/product.dart';
import 'package:bakersoft_demo/core/presentation/widgets/cart_icon_button.dart';
import 'package:bakersoft_demo/core/utilities/app_config.dart';
import 'package:bakersoft_demo/features/products_list/presentation/bloc/products_list_bloc.dart';
import 'package:bakersoft_demo/features/products_list/presentation/widgets/products_list_failure_widget.dart';
import 'package:bakersoft_demo/features/products_list/presentation/widgets/grid_item_loading_widget.dart';
import 'package:bakersoft_demo/features/products_list/presentation/widgets/grid_loading_widget.dart';
import 'package:bakersoft_demo/features/products_list/presentation/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsListPage extends StatefulWidget {
  const ProductsListPage({Key? key}) : super(key: key);

  @override
  State<ProductsListPage> createState() => _ProductsListPageState();
}

class _ProductsListPageState extends State<ProductsListPage> {

late ScrollController _scrollController;
  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_scrollListener)
      ..dispose();
    super.dispose();
  }

  _scrollListener() {
    if (!_scrollController.hasClients) return;
    if (_reachedBottom()) {
      BlocProvider.of<ProductsListBloc>(context).add(const ProductsListEvent.get());
    }
  }

  bool _reachedBottom() {
    final _triggerNextFetch = 0.9 * _scrollController.position.maxScrollExtent;
    return _scrollController.position.pixels >= _triggerNextFetch;
  }


  @override
  Widget build(BuildContext context) {
    AppConfig().setRootContext(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brotchen'),
        centerTitle: true,
        actions: const [
          CartIconButton(),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: BlocBuilder<ProductsListBloc, ProductsListState>(
              builder: (context, state) {
                late Widget _view;
                state.when(
                  loading: () {
                    _view = const GridLoadingWidget();
                  },
                  success: (List<Product> products, bool hasReachedMax) {
                    _view = GridView.builder(
                      controller: _scrollController,
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 20,
                      ),
                      itemCount: hasReachedMax
                          ? products.length
                          : products.length + 2,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (_, index) {
                        if (index >= products.length) {
                          return const GridItemLoadingWidget();
                        } else {
                          return ProductCardWidget(products[index]);
                        }
                      },
                    );
                  },
                  failure: (_errorMessage) {
                    _view = ProductsListFailureWidget(message: _errorMessage);
                  },
                );
                return _view;
              },
            ),
          ),
        ],
      ),
    );
  }
}
