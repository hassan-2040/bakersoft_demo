// ignore_for_file: non_constant_identifier_names

import 'package:bakersoft_demo/core/domain/use_cases/get_cart_items_count.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartItemsCount getCartItemsCount;
  CartBloc(
    {
      required this.getCartItemsCount,
    }
  ) : super(const _Initial()) {
    on<_GetCartItemCount>(on_GetCartItemCount);
  }

  void on_GetCartItemCount(event, emit) {
    emit(_Initial(itemsCount: getCartItemsCount()));
  }
}
