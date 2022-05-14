part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getCartItemCount() = _GetCartItemCount;
  const factory CartEvent.getCartDetails() = _GetCartDetails;
  const factory CartEvent.removeFromCart({required Product product,}) = _RemoveFromCart;
  const factory CartEvent.clearCart() = _ClearCart;
}