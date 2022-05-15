// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product, int quantity) addToCart,
    required TResult Function() clearCart,
    required TResult Function() loadSavedCart,
    required TResult Function(Product product) removeFromCart,
    required TResult Function() saveCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function()? clearCart,
    TResult Function()? loadSavedCart,
    TResult Function(Product product)? removeFromCart,
    TResult Function()? saveCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function()? clearCart,
    TResult Function()? loadSavedCart,
    TResult Function(Product product)? removeFromCart,
    TResult Function()? saveCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_LoadSavedCart value) loadSavedCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_SaveCart value) saveCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadSavedCart value)? loadSavedCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_SaveCart value)? saveCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadSavedCart value)? loadSavedCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_SaveCart value)? saveCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class _$$_AddToCartCopyWith<$Res> {
  factory _$$_AddToCartCopyWith(
          _$_AddToCart value, $Res Function(_$_AddToCart) then) =
      __$$_AddToCartCopyWithImpl<$Res>;
  $Res call({Product product, int quantity});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_AddToCartCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$$_AddToCartCopyWith<$Res> {
  __$$_AddToCartCopyWithImpl(
      _$_AddToCart _value, $Res Function(_$_AddToCart) _then)
      : super(_value, (v) => _then(v as _$_AddToCart));

  @override
  _$_AddToCart get _value => super._value as _$_AddToCart;

  @override
  $Res call({
    Object? product = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$_AddToCart(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$_AddToCart implements _AddToCart {
  const _$_AddToCart({required this.product, this.quantity = 1});

  @override
  final Product product;
  @override
  @JsonKey()
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.addToCart(product: $product, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToCart &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$$_AddToCartCopyWith<_$_AddToCart> get copyWith =>
      __$$_AddToCartCopyWithImpl<_$_AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product, int quantity) addToCart,
    required TResult Function() clearCart,
    required TResult Function() loadSavedCart,
    required TResult Function(Product product) removeFromCart,
    required TResult Function() saveCart,
  }) {
    return addToCart(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function()? clearCart,
    TResult Function()? loadSavedCart,
    TResult Function(Product product)? removeFromCart,
    TResult Function()? saveCart,
  }) {
    return addToCart?.call(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function()? clearCart,
    TResult Function()? loadSavedCart,
    TResult Function(Product product)? removeFromCart,
    TResult Function()? saveCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(product, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_LoadSavedCart value) loadSavedCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_SaveCart value) saveCart,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadSavedCart value)? loadSavedCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_SaveCart value)? saveCart,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadSavedCart value)? loadSavedCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_SaveCart value)? saveCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CartEvent {
  const factory _AddToCart(
      {required final Product product, final int quantity}) = _$_AddToCart;

  Product get product => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AddToCartCopyWith<_$_AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearCartCopyWith<$Res> {
  factory _$$_ClearCartCopyWith(
          _$_ClearCart value, $Res Function(_$_ClearCart) then) =
      __$$_ClearCartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearCartCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$$_ClearCartCopyWith<$Res> {
  __$$_ClearCartCopyWithImpl(
      _$_ClearCart _value, $Res Function(_$_ClearCart) _then)
      : super(_value, (v) => _then(v as _$_ClearCart));

  @override
  _$_ClearCart get _value => super._value as _$_ClearCart;
}

/// @nodoc

class _$_ClearCart implements _ClearCart {
  const _$_ClearCart();

  @override
  String toString() {
    return 'CartEvent.clearCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product, int quantity) addToCart,
    required TResult Function() clearCart,
    required TResult Function() loadSavedCart,
    required TResult Function(Product product) removeFromCart,
    required TResult Function() saveCart,
  }) {
    return clearCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function()? clearCart,
    TResult Function()? loadSavedCart,
    TResult Function(Product product)? removeFromCart,
    TResult Function()? saveCart,
  }) {
    return clearCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function()? clearCart,
    TResult Function()? loadSavedCart,
    TResult Function(Product product)? removeFromCart,
    TResult Function()? saveCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_LoadSavedCart value) loadSavedCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_SaveCart value) saveCart,
  }) {
    return clearCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadSavedCart value)? loadSavedCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_SaveCart value)? saveCart,
  }) {
    return clearCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadSavedCart value)? loadSavedCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_SaveCart value)? saveCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart(this);
    }
    return orElse();
  }
}

abstract class _ClearCart implements CartEvent {
  const factory _ClearCart() = _$_ClearCart;
}

/// @nodoc
abstract class _$$_LoadSavedCartCopyWith<$Res> {
  factory _$$_LoadSavedCartCopyWith(
          _$_LoadSavedCart value, $Res Function(_$_LoadSavedCart) then) =
      __$$_LoadSavedCartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadSavedCartCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$$_LoadSavedCartCopyWith<$Res> {
  __$$_LoadSavedCartCopyWithImpl(
      _$_LoadSavedCart _value, $Res Function(_$_LoadSavedCart) _then)
      : super(_value, (v) => _then(v as _$_LoadSavedCart));

  @override
  _$_LoadSavedCart get _value => super._value as _$_LoadSavedCart;
}

/// @nodoc

class _$_LoadSavedCart implements _LoadSavedCart {
  const _$_LoadSavedCart();

  @override
  String toString() {
    return 'CartEvent.loadSavedCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadSavedCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product, int quantity) addToCart,
    required TResult Function() clearCart,
    required TResult Function() loadSavedCart,
    required TResult Function(Product product) removeFromCart,
    required TResult Function() saveCart,
  }) {
    return loadSavedCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function()? clearCart,
    TResult Function()? loadSavedCart,
    TResult Function(Product product)? removeFromCart,
    TResult Function()? saveCart,
  }) {
    return loadSavedCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function()? clearCart,
    TResult Function()? loadSavedCart,
    TResult Function(Product product)? removeFromCart,
    TResult Function()? saveCart,
    required TResult orElse(),
  }) {
    if (loadSavedCart != null) {
      return loadSavedCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_LoadSavedCart value) loadSavedCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_SaveCart value) saveCart,
  }) {
    return loadSavedCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadSavedCart value)? loadSavedCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_SaveCart value)? saveCart,
  }) {
    return loadSavedCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadSavedCart value)? loadSavedCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_SaveCart value)? saveCart,
    required TResult orElse(),
  }) {
    if (loadSavedCart != null) {
      return loadSavedCart(this);
    }
    return orElse();
  }
}

abstract class _LoadSavedCart implements CartEvent {
  const factory _LoadSavedCart() = _$_LoadSavedCart;
}

/// @nodoc
abstract class _$$_RemoveFromCartCopyWith<$Res> {
  factory _$$_RemoveFromCartCopyWith(
          _$_RemoveFromCart value, $Res Function(_$_RemoveFromCart) then) =
      __$$_RemoveFromCartCopyWithImpl<$Res>;
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_RemoveFromCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$_RemoveFromCartCopyWith<$Res> {
  __$$_RemoveFromCartCopyWithImpl(
      _$_RemoveFromCart _value, $Res Function(_$_RemoveFromCart) _then)
      : super(_value, (v) => _then(v as _$_RemoveFromCart));

  @override
  _$_RemoveFromCart get _value => super._value as _$_RemoveFromCart;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$_RemoveFromCart(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$_RemoveFromCart implements _RemoveFromCart {
  const _$_RemoveFromCart({required this.product});

  @override
  final Product product;

  @override
  String toString() {
    return 'CartEvent.removeFromCart(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveFromCart &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$_RemoveFromCartCopyWith<_$_RemoveFromCart> get copyWith =>
      __$$_RemoveFromCartCopyWithImpl<_$_RemoveFromCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product, int quantity) addToCart,
    required TResult Function() clearCart,
    required TResult Function() loadSavedCart,
    required TResult Function(Product product) removeFromCart,
    required TResult Function() saveCart,
  }) {
    return removeFromCart(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function()? clearCart,
    TResult Function()? loadSavedCart,
    TResult Function(Product product)? removeFromCart,
    TResult Function()? saveCart,
  }) {
    return removeFromCart?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function()? clearCart,
    TResult Function()? loadSavedCart,
    TResult Function(Product product)? removeFromCart,
    TResult Function()? saveCart,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_LoadSavedCart value) loadSavedCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_SaveCart value) saveCart,
  }) {
    return removeFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadSavedCart value)? loadSavedCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_SaveCart value)? saveCart,
  }) {
    return removeFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadSavedCart value)? loadSavedCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_SaveCart value)? saveCart,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromCart implements CartEvent {
  const factory _RemoveFromCart({required final Product product}) =
      _$_RemoveFromCart;

  Product get product => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_RemoveFromCartCopyWith<_$_RemoveFromCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveCartCopyWith<$Res> {
  factory _$$_SaveCartCopyWith(
          _$_SaveCart value, $Res Function(_$_SaveCart) then) =
      __$$_SaveCartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveCartCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$$_SaveCartCopyWith<$Res> {
  __$$_SaveCartCopyWithImpl(
      _$_SaveCart _value, $Res Function(_$_SaveCart) _then)
      : super(_value, (v) => _then(v as _$_SaveCart));

  @override
  _$_SaveCart get _value => super._value as _$_SaveCart;
}

/// @nodoc

class _$_SaveCart implements _SaveCart {
  const _$_SaveCart();

  @override
  String toString() {
    return 'CartEvent.saveCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product, int quantity) addToCart,
    required TResult Function() clearCart,
    required TResult Function() loadSavedCart,
    required TResult Function(Product product) removeFromCart,
    required TResult Function() saveCart,
  }) {
    return saveCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function()? clearCart,
    TResult Function()? loadSavedCart,
    TResult Function(Product product)? removeFromCart,
    TResult Function()? saveCart,
  }) {
    return saveCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function()? clearCart,
    TResult Function()? loadSavedCart,
    TResult Function(Product product)? removeFromCart,
    TResult Function()? saveCart,
    required TResult orElse(),
  }) {
    if (saveCart != null) {
      return saveCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_LoadSavedCart value) loadSavedCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_SaveCart value) saveCart,
  }) {
    return saveCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadSavedCart value)? loadSavedCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_SaveCart value)? saveCart,
  }) {
    return saveCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadSavedCart value)? loadSavedCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_SaveCart value)? saveCart,
    required TResult orElse(),
  }) {
    if (saveCart != null) {
      return saveCart(this);
    }
    return orElse();
  }
}

abstract class _SaveCart implements CartEvent {
  const factory _SaveCart() = _$_SaveCart;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int cartItemsCount, double totalPrice, Map<Product, int> cartItems)
        initial,
    required TResult Function() addToCartSuccess,
    required TResult Function() removeFromCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int cartItemsCount, double totalPrice, Map<Product, int> cartItems)?
        initial,
    TResult Function()? addToCartSuccess,
    TResult Function()? removeFromCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int cartItemsCount, double totalPrice, Map<Product, int> cartItems)?
        initial,
    TResult Function()? addToCartSuccess,
    TResult Function()? removeFromCartSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddToCartSuccess value) addToCartSuccess,
    required TResult Function(_RemoveFromCartSuccess value)
        removeFromCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToCartSuccess value)? addToCartSuccess,
    TResult Function(_RemoveFromCartSuccess value)? removeFromCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToCartSuccess value)? addToCartSuccess,
    TResult Function(_RemoveFromCartSuccess value)? removeFromCartSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  $Res call(
      {int cartItemsCount, double totalPrice, Map<Product, int> cartItems});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? cartItemsCount = freezed,
    Object? totalPrice = freezed,
    Object? cartItems = freezed,
  }) {
    return _then(_$_Initial(
      cartItemsCount: cartItemsCount == freezed
          ? _value.cartItemsCount
          : cartItemsCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      cartItems: cartItems == freezed
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Map<Product, int>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.cartItemsCount = 0,
      this.totalPrice = 0.0,
      final Map<Product, int> cartItems = const {}})
      : _cartItems = cartItems;

  @override
  @JsonKey()
  final int cartItemsCount;
  @override
  @JsonKey()
  final double totalPrice;
  final Map<Product, int> _cartItems;
  @override
  @JsonKey()
  Map<Product, int> get cartItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cartItems);
  }

  @override
  String toString() {
    return 'CartState.initial(cartItemsCount: $cartItemsCount, totalPrice: $totalPrice, cartItems: $cartItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other.cartItemsCount, cartItemsCount) &&
            const DeepCollectionEquality()
                .equals(other.totalPrice, totalPrice) &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cartItemsCount),
      const DeepCollectionEquality().hash(totalPrice),
      const DeepCollectionEquality().hash(_cartItems));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int cartItemsCount, double totalPrice, Map<Product, int> cartItems)
        initial,
    required TResult Function() addToCartSuccess,
    required TResult Function() removeFromCartSuccess,
  }) {
    return initial(cartItemsCount, totalPrice, cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int cartItemsCount, double totalPrice, Map<Product, int> cartItems)?
        initial,
    TResult Function()? addToCartSuccess,
    TResult Function()? removeFromCartSuccess,
  }) {
    return initial?.call(cartItemsCount, totalPrice, cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int cartItemsCount, double totalPrice, Map<Product, int> cartItems)?
        initial,
    TResult Function()? addToCartSuccess,
    TResult Function()? removeFromCartSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(cartItemsCount, totalPrice, cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddToCartSuccess value) addToCartSuccess,
    required TResult Function(_RemoveFromCartSuccess value)
        removeFromCartSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToCartSuccess value)? addToCartSuccess,
    TResult Function(_RemoveFromCartSuccess value)? removeFromCartSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToCartSuccess value)? addToCartSuccess,
    TResult Function(_RemoveFromCartSuccess value)? removeFromCartSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial(
      {final int cartItemsCount,
      final double totalPrice,
      final Map<Product, int> cartItems}) = _$_Initial;

  int get cartItemsCount => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  Map<Product, int> get cartItems => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddToCartSuccessCopyWith<$Res> {
  factory _$$_AddToCartSuccessCopyWith(
          _$_AddToCartSuccess value, $Res Function(_$_AddToCartSuccess) then) =
      __$$_AddToCartSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddToCartSuccessCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res>
    implements _$$_AddToCartSuccessCopyWith<$Res> {
  __$$_AddToCartSuccessCopyWithImpl(
      _$_AddToCartSuccess _value, $Res Function(_$_AddToCartSuccess) _then)
      : super(_value, (v) => _then(v as _$_AddToCartSuccess));

  @override
  _$_AddToCartSuccess get _value => super._value as _$_AddToCartSuccess;
}

/// @nodoc

class _$_AddToCartSuccess implements _AddToCartSuccess {
  const _$_AddToCartSuccess();

  @override
  String toString() {
    return 'CartState.addToCartSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddToCartSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int cartItemsCount, double totalPrice, Map<Product, int> cartItems)
        initial,
    required TResult Function() addToCartSuccess,
    required TResult Function() removeFromCartSuccess,
  }) {
    return addToCartSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int cartItemsCount, double totalPrice, Map<Product, int> cartItems)?
        initial,
    TResult Function()? addToCartSuccess,
    TResult Function()? removeFromCartSuccess,
  }) {
    return addToCartSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int cartItemsCount, double totalPrice, Map<Product, int> cartItems)?
        initial,
    TResult Function()? addToCartSuccess,
    TResult Function()? removeFromCartSuccess,
    required TResult orElse(),
  }) {
    if (addToCartSuccess != null) {
      return addToCartSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddToCartSuccess value) addToCartSuccess,
    required TResult Function(_RemoveFromCartSuccess value)
        removeFromCartSuccess,
  }) {
    return addToCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToCartSuccess value)? addToCartSuccess,
    TResult Function(_RemoveFromCartSuccess value)? removeFromCartSuccess,
  }) {
    return addToCartSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToCartSuccess value)? addToCartSuccess,
    TResult Function(_RemoveFromCartSuccess value)? removeFromCartSuccess,
    required TResult orElse(),
  }) {
    if (addToCartSuccess != null) {
      return addToCartSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddToCartSuccess implements CartState {
  const factory _AddToCartSuccess() = _$_AddToCartSuccess;
}

/// @nodoc
abstract class _$$_RemoveFromCartSuccessCopyWith<$Res> {
  factory _$$_RemoveFromCartSuccessCopyWith(_$_RemoveFromCartSuccess value,
          $Res Function(_$_RemoveFromCartSuccess) then) =
      __$$_RemoveFromCartSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RemoveFromCartSuccessCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res>
    implements _$$_RemoveFromCartSuccessCopyWith<$Res> {
  __$$_RemoveFromCartSuccessCopyWithImpl(_$_RemoveFromCartSuccess _value,
      $Res Function(_$_RemoveFromCartSuccess) _then)
      : super(_value, (v) => _then(v as _$_RemoveFromCartSuccess));

  @override
  _$_RemoveFromCartSuccess get _value =>
      super._value as _$_RemoveFromCartSuccess;
}

/// @nodoc

class _$_RemoveFromCartSuccess implements _RemoveFromCartSuccess {
  const _$_RemoveFromCartSuccess();

  @override
  String toString() {
    return 'CartState.removeFromCartSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RemoveFromCartSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int cartItemsCount, double totalPrice, Map<Product, int> cartItems)
        initial,
    required TResult Function() addToCartSuccess,
    required TResult Function() removeFromCartSuccess,
  }) {
    return removeFromCartSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int cartItemsCount, double totalPrice, Map<Product, int> cartItems)?
        initial,
    TResult Function()? addToCartSuccess,
    TResult Function()? removeFromCartSuccess,
  }) {
    return removeFromCartSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int cartItemsCount, double totalPrice, Map<Product, int> cartItems)?
        initial,
    TResult Function()? addToCartSuccess,
    TResult Function()? removeFromCartSuccess,
    required TResult orElse(),
  }) {
    if (removeFromCartSuccess != null) {
      return removeFromCartSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddToCartSuccess value) addToCartSuccess,
    required TResult Function(_RemoveFromCartSuccess value)
        removeFromCartSuccess,
  }) {
    return removeFromCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToCartSuccess value)? addToCartSuccess,
    TResult Function(_RemoveFromCartSuccess value)? removeFromCartSuccess,
  }) {
    return removeFromCartSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddToCartSuccess value)? addToCartSuccess,
    TResult Function(_RemoveFromCartSuccess value)? removeFromCartSuccess,
    required TResult orElse(),
  }) {
    if (removeFromCartSuccess != null) {
      return removeFromCartSuccess(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromCartSuccess implements CartState {
  const factory _RemoveFromCartSuccess() = _$_RemoveFromCartSuccess;
}
