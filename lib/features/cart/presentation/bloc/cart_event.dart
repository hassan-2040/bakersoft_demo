part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.addToCart({
    required Product product,
    @Default(1) int quantity,
  }) = _AddToCart;
  const factory CartEvent.clearCart() = _ClearCart;
  const factory CartEvent.loadSavedCart() = _LoadSavedCart;
  const factory CartEvent.removeFromCart({required Product product,}) = _RemoveFromCart;
  const factory CartEvent.saveCart() = _SaveCart;
}