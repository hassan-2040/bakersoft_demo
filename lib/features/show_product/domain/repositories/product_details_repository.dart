
class ProductDetailsRepository {

  int _quantity = 1;

  int incrementQuantity() => ++_quantity;

  int decrementQuantity() {
    if (_quantity > 1) {
      return --_quantity;
    }
    return _quantity;
  }

  void resetQuantity() => _quantity = 1;
}
