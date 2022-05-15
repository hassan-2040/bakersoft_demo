// ignore_for_file: non_constant_identifier_names
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
  ProductDetailsBloc({
    required this.incrementQuantity,
    required this.decrementQuantity,
    required this.resetQuantity,
  }) : super(const _Initial()) {
    on<_IncrementQuantity>(on_IncrementQuantity);
    on<_DecrementQuantity>(on_DecrementQuantity);
    on<_ResetQuantity>(on_ResetQuantity);
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
}
