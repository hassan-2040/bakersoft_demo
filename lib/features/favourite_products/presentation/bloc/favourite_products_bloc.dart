// ignore_for_file: non_constant_identifier_names

import 'package:bakersoft_demo/core/common_product_features/domain/models/product.dart';
import 'package:bakersoft_demo/core/error/custom_error_responses.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/use_cases/add_product_to_favourite.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/use_cases/clear_favourite_products.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/use_cases/get_favourite_products.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/use_cases/remove_from_favourite.dart';
import 'package:bakersoft_demo/features/favourite_products/domain/use_cases/save_favourite_products.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_products_event.dart';
part 'favourite_products_state.dart';
part 'favourite_products_bloc.freezed.dart';

class FavouriteProductsBloc
    extends Bloc<FavouriteProductsEvent, FavouriteProductsState> {
  final AddProductToFavourite addProductToFavourite;
  final ClearFavouriteProducts clearFavouriteProducts;
  final GetFavouriteProducts getFavouriteProducts;
  final RemoveFromFavourite removeFromFavourite;
  final SaveFavouriteProducts saveFavouriteProducts;

  FavouriteProductsBloc({
    required this.addProductToFavourite,
    required this.clearFavouriteProducts,
    required this.getFavouriteProducts,
    required this.removeFromFavourite,
    required this.saveFavouriteProducts,
  }) : super(const _Initial()) {
    on<_Get>(on_Get);
    on<_AddToFavourite>(on_AddToFavourite);
    on<_RemoveFromFavourite>(on_RemoveFromFavourite);
    on<_ClearFavouriteProducts>(on_ClearFavouriteProducts);
    on<_SaveFavouriteProducts>(on_SaveFavouriteProducts);
  }

  void on_Get(event, emit) async {
    emit(const _Loading());
    try {
      final products = await getFavouriteProducts();
      emit(_Success(favouriteProducts: products));
    } catch (_error) {
      emit(_Failure(customErrorResponses(_error)));
    }
  }

  void on_AddToFavourite(event, emit) {
    addProductToFavourite(event.product);
    emit(const _AddProductToFavouriteSuccess());
  }

  void on_RemoveFromFavourite(event, emit) {
    removeFromFavourite(event.product);
    emit(const _RemoveProductFromFavouriteSuccess());
  }

  void on_ClearFavouriteProducts(event, emit) {
    clearFavouriteProducts();
  }

  void on_SaveFavouriteProducts(event, emit) async {
    await saveFavouriteProducts();
  }
}
