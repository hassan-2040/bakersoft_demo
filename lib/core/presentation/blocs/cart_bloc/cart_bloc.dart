// ignore_for_file: non_constant_identifier_names

import 'package:bakersoft_demo/core/domain/models/product.dart';
import 'package:bakersoft_demo/core/domain/use_cases/get_cart_items_count.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/clear_cart.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/get_cart_items.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/get_total_price.dart';
import 'package:bakersoft_demo/features/cart/domain/user_cases/remove_from_cart.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartItemsCount getCartItemsCount;
  final GetCartItems getCartItems;
  final GetTotalPrice getTotalPrice;
  final RemoveFromCart removeFromCart;
  final ClearCart clearCart;
  CartBloc({
    required this.getCartItemsCount,
    required this.getCartItems,
    required this.getTotalPrice,
    required this.removeFromCart,
    required this.clearCart,
  }) : super(const _Initial()) {
    on<_GetCartItemCount>(on_GetCartItemCount);
    on<_GetCartDetails>(on_GetCartDetails);
    on<_RemoveFromCart>(on_RemoveFromCart);
    on<_ClearCart>(on_ClearCart);
  }

  //TODO implement error handling
  void on_GetCartItemCount(event, emit) {
    emit(_Initial(cartItemsCount: getCartItemsCount()));
  }

  void on_GetCartDetails(event, emit) async {
    final _cartItems = await getCartItems();
    emit(_Initial(
      cartItems: _cartItems,
      cartItemsCount: getCartItemsCount(),
      totalPrice: getTotalPrice(),
    ));
  }

  void on_RemoveFromCart(event, emit) async {
    removeFromCart(event.product);
    emit(_Initial(
      cartItems: await getCartItems(),
      cartItemsCount: getCartItemsCount(),
      totalPrice: getTotalPrice(),
    ));
  }

  void on_ClearCart(event, emit) async {
    await clearCart();
    emit(_Initial(
      cartItems: await getCartItems(),
      cartItemsCount: getCartItemsCount(),
      totalPrice: getTotalPrice(),
    ));
  }
}
