import 'package:bakersoft_demo/core/utilities/app_router.dart';
import 'package:bakersoft_demo/features/products_list/domain/repositories/products_repository.dart';
import 'package:bakersoft_demo/features/products_list/domain/use_cases/get_all_products.dart';
import 'package:bakersoft_demo/features/products_list/presentation/bloc/products_list_bloc.dart';
import 'package:bakersoft_demo/features/show_product/domain/repositories/product_details_repository.dart';
import 'package:bakersoft_demo/features/show_product/domain/use_cases/add_to_cart.dart';
import 'package:bakersoft_demo/features/show_product/domain/use_cases/decrement_quantity.dart';
import 'package:bakersoft_demo/features/show_product/domain/use_cases/increment_quantity.dart';
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
          create: (_) => ProductsRepository(
            localDataSource: ProductsLocalDataSource(),
          ),
        ),
        RepositoryProvider<ProductDetailsRepository>(
          create: (_) => ProductDetailsRepository(
            
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
                productsRepository: RepositoryProvider.of<ProductsRepository>(context),
              ),
            )..add(const ProductsListEvent.get()),
          ),
          BlocProvider<ProductDetailsBloc>(
            create: (context) => ProductDetailsBloc(
              incrementQuantity: IncrementQuantity(
                productDetailsRepository: RepositoryProvider.of<ProductDetailsRepository>(context),
              ),
              decrementQuantity: DecrementQuantity(
                productDetailsRepository: RepositoryProvider.of<ProductDetailsRepository>(context),
              ),
              addToCart: AddToCart(
                productDetailsRepository: RepositoryProvider.of<ProductDetailsRepository>(context),
              ),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Bakersoft Demo',
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
