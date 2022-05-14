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
    required TResult Function() getCartItemCount,
    required TResult Function() getCartDetails,
    required TResult Function() clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCartItemCount,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCartItemCount,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCartItemCount value) getCartItemCount,
    required TResult Function(_GetCartDetails value) getCartDetails,
    required TResult Function(_ClearCart value) clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCartItemCount value)? getCartItemCount,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCartItemCount value)? getCartItemCount,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
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
abstract class _$$_GetCartItemCountCopyWith<$Res> {
  factory _$$_GetCartItemCountCopyWith(
          _$_GetCartItemCount value, $Res Function(_$_GetCartItemCount) then) =
      __$$_GetCartItemCountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCartItemCountCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$_GetCartItemCountCopyWith<$Res> {
  __$$_GetCartItemCountCopyWithImpl(
      _$_GetCartItemCount _value, $Res Function(_$_GetCartItemCount) _then)
      : super(_value, (v) => _then(v as _$_GetCartItemCount));

  @override
  _$_GetCartItemCount get _value => super._value as _$_GetCartItemCount;
}

/// @nodoc

class _$_GetCartItemCount implements _GetCartItemCount {
  const _$_GetCartItemCount();

  @override
  String toString() {
    return 'CartEvent.getCartItemCount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCartItemCount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCartItemCount,
    required TResult Function() getCartDetails,
    required TResult Function() clearCart,
  }) {
    return getCartItemCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCartItemCount,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
  }) {
    return getCartItemCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCartItemCount,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (getCartItemCount != null) {
      return getCartItemCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCartItemCount value) getCartItemCount,
    required TResult Function(_GetCartDetails value) getCartDetails,
    required TResult Function(_ClearCart value) clearCart,
  }) {
    return getCartItemCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCartItemCount value)? getCartItemCount,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
  }) {
    return getCartItemCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCartItemCount value)? getCartItemCount,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (getCartItemCount != null) {
      return getCartItemCount(this);
    }
    return orElse();
  }
}

abstract class _GetCartItemCount implements CartEvent {
  const factory _GetCartItemCount() = _$_GetCartItemCount;
}

/// @nodoc
abstract class _$$_GetCartDetailsCopyWith<$Res> {
  factory _$$_GetCartDetailsCopyWith(
          _$_GetCartDetails value, $Res Function(_$_GetCartDetails) then) =
      __$$_GetCartDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCartDetailsCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements _$$_GetCartDetailsCopyWith<$Res> {
  __$$_GetCartDetailsCopyWithImpl(
      _$_GetCartDetails _value, $Res Function(_$_GetCartDetails) _then)
      : super(_value, (v) => _then(v as _$_GetCartDetails));

  @override
  _$_GetCartDetails get _value => super._value as _$_GetCartDetails;
}

/// @nodoc

class _$_GetCartDetails implements _GetCartDetails {
  const _$_GetCartDetails();

  @override
  String toString() {
    return 'CartEvent.getCartDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCartDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCartItemCount,
    required TResult Function() getCartDetails,
    required TResult Function() clearCart,
  }) {
    return getCartDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCartItemCount,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
  }) {
    return getCartDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCartItemCount,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (getCartDetails != null) {
      return getCartDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCartItemCount value) getCartItemCount,
    required TResult Function(_GetCartDetails value) getCartDetails,
    required TResult Function(_ClearCart value) clearCart,
  }) {
    return getCartDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCartItemCount value)? getCartItemCount,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
  }) {
    return getCartDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCartItemCount value)? getCartItemCount,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (getCartDetails != null) {
      return getCartDetails(this);
    }
    return orElse();
  }
}

abstract class _GetCartDetails implements CartEvent {
  const factory _GetCartDetails() = _$_GetCartDetails;
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
    required TResult Function() getCartItemCount,
    required TResult Function() getCartDetails,
    required TResult Function() clearCart,
  }) {
    return clearCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCartItemCount,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
  }) {
    return clearCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCartItemCount,
    TResult Function()? getCartDetails,
    TResult Function()? clearCart,
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
    required TResult Function(_GetCartItemCount value) getCartItemCount,
    required TResult Function(_GetCartDetails value) getCartDetails,
    required TResult Function(_ClearCart value) clearCart,
  }) {
    return clearCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCartItemCount value)? getCartItemCount,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
  }) {
    return clearCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCartItemCount value)? getCartItemCount,
    TResult Function(_GetCartDetails value)? getCartDetails,
    TResult Function(_ClearCart value)? clearCart,
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
mixin _$CartState {
  int get cartItemsCount => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  Map<Product, int> get cartItems => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int cartItemsCount, double totalPrice, Map<Product, int> cartItems)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int cartItemsCount, double totalPrice, Map<Product, int> cartItems)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int cartItemsCount, double totalPrice, Map<Product, int> cartItems)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call(
      {int cartItemsCount, double totalPrice, Map<Product, int> cartItems});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object? cartItemsCount = freezed,
    Object? totalPrice = freezed,
    Object? cartItems = freezed,
  }) {
    return _then(_value.copyWith(
      cartItemsCount: cartItemsCount == freezed
          ? _value.cartItemsCount
          : cartItemsCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      cartItems: cartItems == freezed
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Map<Product, int>,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
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
  }) {
    return initial(cartItemsCount, totalPrice, cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int cartItemsCount, double totalPrice, Map<Product, int> cartItems)?
        initial,
  }) {
    return initial?.call(cartItemsCount, totalPrice, cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int cartItemsCount, double totalPrice, Map<Product, int> cartItems)?
        initial,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

  @override
  int get cartItemsCount => throw _privateConstructorUsedError;
  @override
  double get totalPrice => throw _privateConstructorUsedError;
  @override
  Map<Product, int> get cartItems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
