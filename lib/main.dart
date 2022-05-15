import 'package:bakersoft_demo/core/common_cart_features/domain/use_cases/add_to_cart.dart';
import 'package:bakersoft_demo/core/common_cart_features/domain/use_cases/get_cart_items_count.dart';
import 'package:bakersoft_demo/core/common_cart_features/presentation/bloc/cart_bloc.dart';
import 'package:bakersoft_demo/core/utilities/app_router.dart';
import 'package:bakersoft_demo/features/cart/data_sources/cart_local_data_source.dart';
import 'package:bakersoft_demo/features/cart/domain/repositories/cart_repository.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/clear_cart.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/get_cart_items.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/get_total_price.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/remove_from_cart.dart';
import 'package:bakersoft_demo/features/favourite_products/data_sources/favourite_products_local_data_source.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/repositories/favourite_products_repository.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/use_cases/save_favourite_products_to_storage.dart';
import 'package:bakersoft_demo/features/products_list/domain/repositories/products_repository.dart';
import 'package:bakersoft_demo/features/products_list/domain/use_cases/get_all_products.dart';
import 'package:bakersoft_demo/features/products_list/presentation/bloc/products_list_bloc.dart';
import 'package:bakersoft_demo/features/show_product/domain/repositories/product_details_repository.dart';
import 'package:bakersoft_demo/features/show_product/domain/use_cases/decrement_quantity.dart';
import 'package:bakersoft_demo/features/show_product/domain/use_cases/increment_quantity.dart';
import 'package:bakersoft_demo/features/show_product/domain/use_cases/reset_quantity.dart';
import 'package:bakersoft_demo/features/show_product/presentation/bloc/product_details_bloc.dart';
import 'package:bakersoft_demo/features/splash/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/products_list/data_sources/products_local_data_source.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ProductsRepository>(
          create: (context) => ProductsRepository(
            localDataSource: ProductsLocalDataSource(),
          ),
        ),
        RepositoryProvider<CartRepository>(
          create: (context) => CartRepository(
            localDataSource: CartLocalDataSource(),
          ),
        ),
        RepositoryProvider<FavouriteProductsRepository>(
          create: (context) => FavouriteProductsRepository(
            favouriteProductsLocalDataSource: FavouriteProductsLocalDataSource(),
          ),
        ),
        RepositoryProvider<ProductDetailsRepository>(
          create: (context) => ProductDetailsRepository(
            addToCart: AddToCart(
              cartRepository: RepositoryProvider.of<CartRepository>(context),
            ),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<SplashBloc>(
            create: (context) => SplashBloc()..add(const SplashEvent.started()),
          ),
          BlocProvider<ProductsListBloc>(
            create: (context) => ProductsListBloc(
              GetAllProducts(
                productsRepository:
                    RepositoryProvider.of<ProductsRepository>(context),
              ),
            )..add(const ProductsListEvent.get()),
          ),
          BlocProvider<ProductDetailsBloc>(
            create: (context) => ProductDetailsBloc(
              incrementQuantity: IncrementQuantity(
                productDetailsRepository:
                    RepositoryProvider.of<ProductDetailsRepository>(context),
              ),
              decrementQuantity: DecrementQuantity(
                productDetailsRepository:
                    RepositoryProvider.of<ProductDetailsRepository>(context),
              ),
              resetQuantity: ResetQuantity(
                productDetailsRepository:
                    RepositoryProvider.of<ProductDetailsRepository>(context),
              ),
              addToCart: AddToCart(
                cartRepository: RepositoryProvider.of<CartRepository>(context),
              ),
            ),
          ),
          BlocProvider<CartBloc>(
            create: (context) => CartBloc(
              getCartItemsCount: GetCartItemsCount(
                cartRepository: RepositoryProvider.of<CartRepository>(context),
              ),
              getCartItems: GetCartItems(
                cartRepository: RepositoryProvider.of<CartRepository>(context),
              ),
              getTotalPrice: GetTotalPrice(
                cartRepository: RepositoryProvider.of<CartRepository>(context),
              ),
              removeFromCart: RemoveFromCart(
                cartRepository: RepositoryProvider.of<CartRepository>(context),
              ),
              clearCart: ClearCart(
                cartRepository: RepositoryProvider.of<CartRepository>(context),
              ),
            )..add(const CartEvent.getCartDetails()),
          ),
        ],
        child: MaterialApp(
          title: 'Bakersoft Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.lime,
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
              )),
          initialRoute: AppRouter.splashPageRoute,
          onGenerateInitialRoutes: AppRouter.generateInitialRoute,
          onGenerateRoute: AppRouter.generateRoute,
        ),
      ),
    );
  }
}
