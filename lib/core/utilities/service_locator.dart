import 'package:bakersoft_demo/features/cart/data_sources/cart_local_data_source.dart';
import 'package:bakersoft_demo/features/cart/domain/repositories/cart_repository.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/add_to_cart.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/clear_cart.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/get_cart_items.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/get_cart_items_count.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/get_total_price.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/load_saved_cart.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/remove_from_cart.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/save_cart.dart';
import 'package:bakersoft_demo/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:bakersoft_demo/features/favourite_products/data_sources/favourite_products_local_data_source.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/repositories/favourite_products_repository.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/use_cases/add_product_to_favourite.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/use_cases/clear_favourite_products.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/use_cases/get_favourite_products.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/use_cases/load_saved_favourite_products.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/use_cases/remove_from_favourite.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/use_cases/save_favourite_products.dart';
import 'package:bakersoft_demo/features/favourite_products/presentation/bloc/favourite_products_bloc.dart';
import 'package:bakersoft_demo/features/products_list/data_sources/products_local_data_source.dart';
import 'package:bakersoft_demo/features/products_list/domain/repositories/products_repository.dart';
import 'package:bakersoft_demo/features/products_list/domain/use_cases/get_all_products.dart';
import 'package:bakersoft_demo/features/products_list/presentation/bloc/products_list_bloc.dart';
import 'package:bakersoft_demo/features/show_product/domain/repositories/product_details_repository.dart';
import 'package:bakersoft_demo/features/show_product/domain/use_cases/decrement_quantity.dart';
import 'package:bakersoft_demo/features/show_product/domain/use_cases/increment_quantity.dart';
import 'package:bakersoft_demo/features/show_product/domain/use_cases/reset_quantity.dart';
import 'package:bakersoft_demo/features/show_product/presentation/bloc/product_details_bloc.dart';
import 'package:bakersoft_demo/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:get_it/get_it.dart';

//global service locator
final sl = GetIt.instance;

void initializeServiceLocator() {
  
  //Registering Repositories

  sl.registerSingleton<ProductsRepository>(ProductsRepository(
    productsLocalDataSource: ProductsLocalDataSource(),
  ));

  sl.registerSingleton<CartRepository>(
      CartRepository(cartLocalDataSource: CartLocalDataSource()));

  sl.registerSingleton<FavouriteProductsRepository>(FavouriteProductsRepository(
      favouriteProductsLocalDataSource: FavouriteProductsLocalDataSource()));
      
  sl.registerSingleton<ProductDetailsRepository>(ProductDetailsRepository());

  //Registering blocs
  
  sl.registerLazySingleton<SplashBloc>(() => SplashBloc());


  sl.registerLazySingleton<ProductsListBloc>(() => ProductsListBloc(
      GetAllProducts(productsRepository: sl<ProductsRepository>())));


  sl.registerLazySingleton<CartBloc>(() => CartBloc(
        addToCart: AddToCart(
          cartRepository: sl<CartRepository>(),
        ),
        loadSavedCart: LoadSavedCart(cartRepository: sl<CartRepository>()),
        saveCart: SaveCart(cartRepository: sl<CartRepository>()),
        removeFromCart: RemoveFromCart(cartRepository: sl<CartRepository>()),
        clearCart: ClearCart(cartRepository: sl<CartRepository>()),
        getCartItemsCount:
            GetCartItemsCount(cartRepository: sl<CartRepository>()),
        getCartItems: GetCartItems(cartRepository: sl<CartRepository>()),
        getTotalPrice: GetTotalPrice(cartRepository: sl<CartRepository>()),
      ));


  sl.registerLazySingleton<FavouriteProductsBloc>(() => FavouriteProductsBloc(
        addProductToFavourite: AddProductToFavourite(
          favouriteProductsRepository: sl<FavouriteProductsRepository>(),
        ),
        loadSavedFavouriteProducts: LoadSavedFavouriteProducts(
          favouriteProductsRepository: sl<FavouriteProductsRepository>(),
        ),
        clearFavouriteProducts: ClearFavouriteProducts(
          favouriteProductsRepository: sl<FavouriteProductsRepository>(),
        ),
        getFavouriteProducts: GetFavouriteProducts(
          favouriteProductsRepository: sl<FavouriteProductsRepository>(),
        ),
        removeFromFavourite: RemoveFromFavourite(
          favouriteProductsRepository: sl<FavouriteProductsRepository>(),
        ),
        saveFavouriteProducts: SaveFavouriteProducts(
          favouriteProductsRepository: sl<FavouriteProductsRepository>(),
        ),
      ));


  sl.registerFactory<ProductDetailsBloc>(() => ProductDetailsBloc(
        incrementQuantity: IncrementQuantity(
            productDetailsRepository: sl<ProductDetailsRepository>()),
        decrementQuantity: DecrementQuantity(
            productDetailsRepository: sl<ProductDetailsRepository>()),
        resetQuantity: ResetQuantity(
            productDetailsRepository: sl<ProductDetailsRepository>()),
      ));
}
