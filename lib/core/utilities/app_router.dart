
import 'package:bakersoft_demo/features/cart/presentation/pages/cart_page.dart';
import 'package:bakersoft_demo/features/favourite_products/presentation/pages/favourite_products_page.dart';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';
import 'package:bakersoft_demo/features/products_list/presentation/pages/products_list_page.dart';
import 'package:bakersoft_demo/features/show_product/presentation/pages/product_details_page.dart';
import 'package:bakersoft_demo/features/splash/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  //app route names
  static const String splashPageRoute = '/splashPage';
  static const String productsListPageRoute = '/productsListPage';
  static const String productDetailsPageRoute = '/productDetailsPage';
  static const String cartPageRoute = '/cartPage';
  static const String favouriteProductsPageRoute = '/favouriteProductsPage';

  ///Used this function to make sure the home attribute of MaterialApp is not rendered
  ///in addition to the required Pages. If this is not overridden, an extra Page pops up
  ///in the beginning of the navigation stack, as the base route '/'.
  ///See https://api.flutter.dev/flutter/widgets/WidgetsApp/initialRoute.html
  static List<Route<dynamic>> generateInitialRoute(String _string) {
    //use a switch statement to match strings to Pages based on use-case
    return [
      MaterialPageRoute(
        builder: (_) => const SplashPage(),
      ),
    ];
  }

  static Route<dynamic> generateRoute(RouteSettings _settings) {
    switch (_settings.name) {
      case splashPageRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
        );
      case productsListPageRoute:
        return MaterialPageRoute(
          builder: (_) => const ProductsListPage(),
        );
      case productDetailsPageRoute:
        return MaterialPageRoute(
          builder: (_) => ProductDetailsPage(_settings.arguments as Product),
        );
      case cartPageRoute:
        return MaterialPageRoute(
          builder: (_) => const CartPage(),
        );
      case favouriteProductsPageRoute:
        return MaterialPageRoute(
          builder: (_) => const FavouriteProductsPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${_settings.name}'),
            ),
          ),
        );
    }
  }
}
