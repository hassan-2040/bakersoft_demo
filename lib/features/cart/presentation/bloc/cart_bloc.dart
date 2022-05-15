// ignore_for_file: non_constant_identifier_names
import 'dart:async';
import 'package:bakersoft_demo/core/utilities/constants.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/add_to_cart.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/clear_cart.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/get_cart_items.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/get_cart_items_count.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/get_total_price.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/load_saved_cart.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/remove_from_cart.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/save_cart.dart';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final AddToCart addToCart;
  final LoadSavedCart loadSavedCart;
  final SaveCart saveCart;
  final RemoveFromCart removeFromCart;
  final ClearCart clearCart;
  final GetCartItemsCount getCartItemsCount;
  final GetCartItems getCartItems;
  final GetTotalPrice getTotalPrice;
  CartBloc({
    required this.addToCart,
    required this.loadSavedCart,
    required this.saveCart,
    required this.removeFromCart,
    required this.clearCart,
    required this.getCartItemsCount,
    required this.getCartItems,
    required this.getTotalPrice,
  }) : super(const _Initial()) {
    on<_AddToCart>(on_AddToCart, transformer: sequential());
    on<_LoadSavedCart>(on_LoadSavedCart);
    on<_SaveCart>(on_SaveCart);
    on<_RemoveFromCart>(on_RemoveFromCart);
    on<_ClearCart>(on_ClearCart);
  }

  void on_AddToCart(_AddToCart event, emit) {
    addToCart(
      product: event.product,
      quantity: event.quantity,
    );
    printInfo('emitting add to cart success state');
    emit(const _AddToCartSuccess());
    emit(_Initial(
      cartItems: getCartItems(),
      cartItemsCount: getCartItemsCount(),
      totalPrice: getTotalPrice(),
    ));
  }

  Future<void> on_LoadSavedCart(_LoadSavedCart event, emit) async {
    await loadSavedCart();
    emit(_Initial(
      cartItems: getCartItems(),
      cartItemsCount: getCartItemsCount(),
      totalPrice: getTotalPrice(),
    ));
  }

  Future<void> on_SaveCart(_SaveCart event, emit) async {
    await saveCart();
  }

  void on_RemoveFromCart(_RemoveFromCart event, emit) {
    removeFromCart(
      event.product,
    );
    emit(_Initial(
      cartItems: getCartItems(),
      cartItemsCount: getCartItemsCount(),
      totalPrice: getTotalPrice(),
    ));
  }

  void on_ClearCart(_ClearCart event, emit) {
    clearCart();
    emit(_Initial(
      cartItems: getCartItems(),
      cartItemsCount: getCartItemsCount(),
      totalPrice: getTotalPrice(),
    ));
  }
}
