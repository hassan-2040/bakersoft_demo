import 'package:bakersoft_demo/core/utilities/service_locator.dart';
import 'package:bakersoft_demo/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:bakersoft_demo/features/favourite_products/presentation/bloc/favourite_products_bloc.dart';
import 'package:bakersoft_demo/features/products_list/presentation/bloc/products_list_bloc.dart';
import 'package:bakersoft_demo/features/show_product/presentation/bloc/product_details_bloc.dart';
import 'package:bakersoft_demo/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:bakersoft_demo/core/utilities/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SplashBloc>(
          create: (context) =>
              sl<SplashBloc>()..add(const SplashEvent.started()),
        ),
        BlocProvider<ProductsListBloc>(
          create: (context) =>
              sl<ProductsListBloc>()..add(const ProductsListEvent.get()),
        ),
        BlocProvider<ProductDetailsBloc>(
          create: (context) => sl<ProductDetailsBloc>(),
        ),
        BlocProvider<CartBloc>(
          create: (context) =>
              sl<CartBloc>()..add(const CartEvent.loadSavedCart()),
        ),
        BlocProvider<FavouriteProductsBloc>(
          create: (context) => sl<FavouriteProductsBloc>()
            ..add(const FavouriteProductsEvent.loadSavedFavouriteProducts()),
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
    );
  }
}
