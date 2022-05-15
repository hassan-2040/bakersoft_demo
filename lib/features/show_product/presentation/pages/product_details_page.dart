import 'package:bakersoft_demo/core/common_cart_features/presentation/bloc/cart_bloc.dart';
import 'package:bakersoft_demo/core/common_product_features/domain/models/product.dart';
import 'package:bakersoft_demo/core/common_widgets/cart_icon_button.dart';
import 'package:bakersoft_demo/core/common_widgets/image_loader.dart';
import 'package:bakersoft_demo/core/utilities/app_config.dart';
import 'package:bakersoft_demo/core/utilities/constants.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/repositories/favourite_products_repository.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/use_cases/check_is_favourite.dart';
import 'package:bakersoft_demo/features/favourite_products/presentation/widgets/favourite_button.dart';
import 'package:bakersoft_demo/features/show_product/presentation/bloc/product_details_bloc.dart';
import 'package:bakersoft_demo/features/show_product/presentation/widgets/nutritional_value_widget.dart';
import 'package:bakersoft_demo/features/show_product/presentation/widgets/quantity_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;
  const ProductDetailsPage(
    this.product, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        BlocProvider.of<ProductDetailsBloc>(context)
            .add(const ProductDetailsEvent.resetQuantity());
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(product.name),
          centerTitle: true,
          actions: const [
            CartIconButton(),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: AppConfig.screenHeight * 0.1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: product.id,
                child: Stack(
                  children: [
                    ImageLoader(
                      imageUrl: product.imageUrl,
                      height: AppConfig.screenHeight * 0.5,
                      placeHolderHeight: AppConfig.screenHeight * 0.5,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: FavouriteButton(
                        product: product,
                        checkIsFavourite: CheckIsFavourite(
                          favouriteProductsRepository: RepositoryProvider.of<
                              FavouriteProductsRepository>(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  product.name,
                  overflow: TextOverflow.visible,
                  style: AppConfig.getTextStyle(
                    context: context,
                    fontWeight: FontWeight.bold,
                    textSize: TextSize.main,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      '€${product.price}',
                      style: AppConfig.getTextStyle(
                        context: context,
                        textSize: TextSize.sub,
                      ),
                    ),
                  ),
                  QuantityButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () =>
                        BlocProvider.of<ProductDetailsBloc>(context).add(
                      const ProductDetailsEvent.decrementQuantity(),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  BlocConsumer<ProductDetailsBloc, ProductDetailsState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        addToCartSuccess: () {
                          AppConfig.showSuccessSnackBar(
                              snackBarText: 'Item added to cart!');
                        },
                      );
                    },
                    builder: (context, state) {
                      int _quantity = 1;
                      state.whenOrNull(
                        initial: (quantity) => _quantity = quantity,
                      );
                      return Text(
                        '$_quantity',
                        style: AppConfig.getTextStyle(
                          context: context,
                          textSize: TextSize.sub,
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  QuantityButton(
                    icon: const Icon(Icons.add),
                    onPressed: () =>
                        BlocProvider.of<ProductDetailsBloc>(context).add(
                      const ProductDetailsEvent.incrementQuantity(),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  product.description,
                  textAlign: TextAlign.left,
                  style: AppConfig.getTextStyle(
                    context: context,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: NutritionalValueWidget(product.nutritionValue),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton:
            BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
          builder: (context, state) {
            int _quantity = 1;
            state.whenOrNull(
              initial: (quantity) => _quantity = quantity,
            );
            return Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<ProductDetailsBloc>(context).add(
                        ProductDetailsEvent.addToCart(
                          product: product,
                          quantity: _quantity,
                        ),
                      );
                      BlocProvider.of<CartBloc>(context)
                          .add(const CartEvent.getCartDetails());
                    },
                    child: const Text('Add to cart'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
