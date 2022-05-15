// ignore_for_file: non_constant_identifier_names
import 'package:bakersoft_demo/features/cart/domain/user_cases/add_to_cart.dart';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';
import 'package:bakersoft_demo/features/show_product/domain/use_cases/decrement_quantity.dart';
import 'package:bakersoft_demo/features/show_product/domain/use_cases/increment_quantity.dart';
import 'package:bakersoft_demo/features/show_product/domain/use_cases/reset_quantity.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';
part 'product_details_bloc.freezed.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final IncrementQuantity incrementQuantity;
  final DecrementQuantity decrementQuantity;
  final ResetQuantity resetQuantity;
  final AddToCart addToCart;
  ProductDetailsBloc({
    required this.incrementQuantity,
    required this.decrementQuantity,
    required this.resetQuantity,
    required this.addToCart,
  }) : super(const _Initial()) {
    on<_IncrementQuantity>(on_IncrementQuantity);
    on<_DecrementQuantity>(on_DecrementQuantity);
    on<_ResetQuantity>(on_ResetQuantity);
    on<_AddToCart>(on_AddToCart);
  }

  void on_IncrementQuantity(event, emit) async {
    emit(_Initial(quantity: incrementQuantity()));
  }

  void on_DecrementQuantity(event, emit) async {
    emit(_Initial(quantity: decrementQuantity()));
  }

  void on_ResetQuantity(event, emit) async {
    resetQuantity();
    emit(const _Initial());
  }

  void on_AddToCart(event, emit) async {
    addToCart(
      product: event.product,
      quantity: event.quantity,
    );
    emit(const _AddToCartSuccess());
    emit(const _Initial());
  }
}
