part of 'product_details_bloc.dart';

@freezed
class ProductDetailsEvent with _$ProductDetailsEvent {
  const factory ProductDetailsEvent.incrementQuantity() = _IncrementQuantity;
  const factory ProductDetailsEvent.decrementQuantity() = _DecrementQuantity;
  const factory ProductDetailsEvent.resetQuantity() = _ResetQuantity;
}