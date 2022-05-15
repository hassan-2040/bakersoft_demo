// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favourite_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouriteProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function(Product product) addToFavourite,
    required TResult Function(Product product) removeFromFavourite,
    required TResult Function() clearFavouriteProducts,
    required TResult Function() saveFavouriteProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(Product product)? addToFavourite,
    TResult Function(Product product)? removeFromFavourite,
    TResult Function()? clearFavouriteProducts,
    TResult Function()? saveFavouriteProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(Product product)? addToFavourite,
    TResult Function(Product product)? removeFromFavourite,
    TResult Function()? clearFavouriteProducts,
    TResult Function()? saveFavouriteProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) get,
    required TResult Function(_AddToFavourite value) addToFavourite,
    required TResult Function(_RemoveFromFavourite value) removeFromFavourite,
    required TResult Function(_ClearFavouriteProducts value)
        clearFavouriteProducts,
    required TResult Function(_SaveFavouriteProducts value)
        saveFavouriteProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Get value)? get,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeFromFavourite,
    TResult Function(_ClearFavouriteProducts value)? clearFavouriteProducts,
    TResult Function(_SaveFavouriteProducts value)? saveFavouriteProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? get,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeFromFavourite,
    TResult Function(_ClearFavouriteProducts value)? clearFavouriteProducts,
    TResult Function(_SaveFavouriteProducts value)? saveFavouriteProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteProductsEventCopyWith<$Res> {
  factory $FavouriteProductsEventCopyWith(FavouriteProductsEvent value,
          $Res Function(FavouriteProductsEvent) then) =
      _$FavouriteProductsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavouriteProductsEventCopyWithImpl<$Res>
    implements $FavouriteProductsEventCopyWith<$Res> {
  _$FavouriteProductsEventCopyWithImpl(this._value, this._then);

  final FavouriteProductsEvent _value;
  // ignore: unused_field
  final $Res Function(FavouriteProductsEvent) _then;
}

/// @nodoc
abstract class _$$_GetCopyWith<$Res> {
  factory _$$_GetCopyWith(_$_Get value, $Res Function(_$_Get) then) =
      __$$_GetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCopyWithImpl<$Res>
    extends _$FavouriteProductsEventCopyWithImpl<$Res>
    implements _$$_GetCopyWith<$Res> {
  __$$_GetCopyWithImpl(_$_Get _value, $Res Function(_$_Get) _then)
      : super(_value, (v) => _then(v as _$_Get));

  @override
  _$_Get get _value => super._value as _$_Get;
}

/// @nodoc

class _$_Get implements _Get {
  const _$_Get();

  @override
  String toString() {
    return 'FavouriteProductsEvent.get()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Get);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function(Product product) addToFavourite,
    required TResult Function(Product product) removeFromFavourite,
    required TResult Function() clearFavouriteProducts,
    required TResult Function() saveFavouriteProducts,
  }) {
    return get();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(Product product)? addToFavourite,
    TResult Function(Product product)? removeFromFavourite,
    TResult Function()? clearFavouriteProducts,
    TResult Function()? saveFavouriteProducts,
  }) {
    return get?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(Product product)? addToFavourite,
    TResult Function(Product product)? removeFromFavourite,
    TResult Function()? clearFavouriteProducts,
    TResult Function()? saveFavouriteProducts,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) get,
    required TResult Function(_AddToFavourite value) addToFavourite,
    required TResult Function(_RemoveFromFavourite value) removeFromFavourite,
    required TResult Function(_ClearFavouriteProducts value)
        clearFavouriteProducts,
    required TResult Function(_SaveFavouriteProducts value)
        saveFavouriteProducts,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Get value)? get,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeFromFavourite,
    TResult Function(_ClearFavouriteProducts value)? clearFavouriteProducts,
    TResult Function(_SaveFavouriteProducts value)? saveFavouriteProducts,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? get,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeFromFavourite,
    TResult Function(_ClearFavouriteProducts value)? clearFavouriteProducts,
    TResult Function(_SaveFavouriteProducts value)? saveFavouriteProducts,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _Get implements FavouriteProductsEvent {
  const factory _Get() = _$_Get;
}

/// @nodoc
abstract class _$$_AddToFavouriteCopyWith<$Res> {
  factory _$$_AddToFavouriteCopyWith(
          _$_AddToFavourite value, $Res Function(_$_AddToFavourite) then) =
      __$$_AddToFavouriteCopyWithImpl<$Res>;
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_AddToFavouriteCopyWithImpl<$Res>
    extends _$FavouriteProductsEventCopyWithImpl<$Res>
    implements _$$_AddToFavouriteCopyWith<$Res> {
  __$$_AddToFavouriteCopyWithImpl(
      _$_AddToFavourite _value, $Res Function(_$_AddToFavourite) _then)
      : super(_value, (v) => _then(v as _$_AddToFavourite));

  @override
  _$_AddToFavourite get _value => super._value as _$_AddToFavourite;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$_AddToFavourite(
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

class _$_AddToFavourite implements _AddToFavourite {
  const _$_AddToFavourite({required this.product});

  @override
  final Product product;

  @override
  String toString() {
    return 'FavouriteProductsEvent.addToFavourite(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToFavourite &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$_AddToFavouriteCopyWith<_$_AddToFavourite> get copyWith =>
      __$$_AddToFavouriteCopyWithImpl<_$_AddToFavourite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function(Product product) addToFavourite,
    required TResult Function(Product product) removeFromFavourite,
    required TResult Function() clearFavouriteProducts,
    required TResult Function() saveFavouriteProducts,
  }) {
    return addToFavourite(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(Product product)? addToFavourite,
    TResult Function(Product product)? removeFromFavourite,
    TResult Function()? clearFavouriteProducts,
    TResult Function()? saveFavouriteProducts,
  }) {
    return addToFavourite?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(Product product)? addToFavourite,
    TResult Function(Product product)? removeFromFavourite,
    TResult Function()? clearFavouriteProducts,
    TResult Function()? saveFavouriteProducts,
    required TResult orElse(),
  }) {
    if (addToFavourite != null) {
      return addToFavourite(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) get,
    required TResult Function(_AddToFavourite value) addToFavourite,
    required TResult Function(_RemoveFromFavourite value) removeFromFavourite,
    required TResult Function(_ClearFavouriteProducts value)
        clearFavouriteProducts,
    required TResult Function(_SaveFavouriteProducts value)
        saveFavouriteProducts,
  }) {
    return addToFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Get value)? get,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeFromFavourite,
    TResult Function(_ClearFavouriteProducts value)? clearFavouriteProducts,
    TResult Function(_SaveFavouriteProducts value)? saveFavouriteProducts,
  }) {
    return addToFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? get,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeFromFavourite,
    TResult Function(_ClearFavouriteProducts value)? clearFavouriteProducts,
    TResult Function(_SaveFavouriteProducts value)? saveFavouriteProducts,
    required TResult orElse(),
  }) {
    if (addToFavourite != null) {
      return addToFavourite(this);
    }
    return orElse();
  }
}

abstract class _AddToFavourite implements FavouriteProductsEvent {
  const factory _AddToFavourite({required final Product product}) =
      _$_AddToFavourite;

  Product get product => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AddToFavouriteCopyWith<_$_AddToFavourite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveFromFavouriteCopyWith<$Res> {
  factory _$$_RemoveFromFavouriteCopyWith(_$_RemoveFromFavourite value,
          $Res Function(_$_RemoveFromFavourite) then) =
      __$$_RemoveFromFavouriteCopyWithImpl<$Res>;
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_RemoveFromFavouriteCopyWithImpl<$Res>
    extends _$FavouriteProductsEventCopyWithImpl<$Res>
    implements _$$_RemoveFromFavouriteCopyWith<$Res> {
  __$$_RemoveFromFavouriteCopyWithImpl(_$_RemoveFromFavourite _value,
      $Res Function(_$_RemoveFromFavourite) _then)
      : super(_value, (v) => _then(v as _$_RemoveFromFavourite));

  @override
  _$_RemoveFromFavourite get _value => super._value as _$_RemoveFromFavourite;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$_RemoveFromFavourite(
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

class _$_RemoveFromFavourite implements _RemoveFromFavourite {
  const _$_RemoveFromFavourite({required this.product});

  @override
  final Product product;

  @override
  String toString() {
    return 'FavouriteProductsEvent.removeFromFavourite(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveFromFavourite &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$_RemoveFromFavouriteCopyWith<_$_RemoveFromFavourite> get copyWith =>
      __$$_RemoveFromFavouriteCopyWithImpl<_$_RemoveFromFavourite>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function(Product product) addToFavourite,
    required TResult Function(Product product) removeFromFavourite,
    required TResult Function() clearFavouriteProducts,
    required TResult Function() saveFavouriteProducts,
  }) {
    return removeFromFavourite(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(Product product)? addToFavourite,
    TResult Function(Product product)? removeFromFavourite,
    TResult Function()? clearFavouriteProducts,
    TResult Function()? saveFavouriteProducts,
  }) {
    return removeFromFavourite?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(Product product)? addToFavourite,
    TResult Function(Product product)? removeFromFavourite,
    TResult Function()? clearFavouriteProducts,
    TResult Function()? saveFavouriteProducts,
    required TResult orElse(),
  }) {
    if (removeFromFavourite != null) {
      return removeFromFavourite(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) get,
    required TResult Function(_AddToFavourite value) addToFavourite,
    required TResult Function(_RemoveFromFavourite value) removeFromFavourite,
    required TResult Function(_ClearFavouriteProducts value)
        clearFavouriteProducts,
    required TResult Function(_SaveFavouriteProducts value)
        saveFavouriteProducts,
  }) {
    return removeFromFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Get value)? get,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeFromFavourite,
    TResult Function(_ClearFavouriteProducts value)? clearFavouriteProducts,
    TResult Function(_SaveFavouriteProducts value)? saveFavouriteProducts,
  }) {
    return removeFromFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? get,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeFromFavourite,
    TResult Function(_ClearFavouriteProducts value)? clearFavouriteProducts,
    TResult Function(_SaveFavouriteProducts value)? saveFavouriteProducts,
    required TResult orElse(),
  }) {
    if (removeFromFavourite != null) {
      return removeFromFavourite(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromFavourite implements FavouriteProductsEvent {
  const factory _RemoveFromFavourite({required final Product product}) =
      _$_RemoveFromFavourite;

  Product get product => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_RemoveFromFavouriteCopyWith<_$_RemoveFromFavourite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearFavouriteProductsCopyWith<$Res> {
  factory _$$_ClearFavouriteProductsCopyWith(_$_ClearFavouriteProducts value,
          $Res Function(_$_ClearFavouriteProducts) then) =
      __$$_ClearFavouriteProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearFavouriteProductsCopyWithImpl<$Res>
    extends _$FavouriteProductsEventCopyWithImpl<$Res>
    implements _$$_ClearFavouriteProductsCopyWith<$Res> {
  __$$_ClearFavouriteProductsCopyWithImpl(_$_ClearFavouriteProducts _value,
      $Res Function(_$_ClearFavouriteProducts) _then)
      : super(_value, (v) => _then(v as _$_ClearFavouriteProducts));

  @override
  _$_ClearFavouriteProducts get _value =>
      super._value as _$_ClearFavouriteProducts;
}

/// @nodoc

class _$_ClearFavouriteProducts implements _ClearFavouriteProducts {
  const _$_ClearFavouriteProducts();

  @override
  String toString() {
    return 'FavouriteProductsEvent.clearFavouriteProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClearFavouriteProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function(Product product) addToFavourite,
    required TResult Function(Product product) removeFromFavourite,
    required TResult Function() clearFavouriteProducts,
    required TResult Function() saveFavouriteProducts,
  }) {
    return clearFavouriteProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(Product product)? addToFavourite,
    TResult Function(Product product)? removeFromFavourite,
    TResult Function()? clearFavouriteProducts,
    TResult Function()? saveFavouriteProducts,
  }) {
    return clearFavouriteProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(Product product)? addToFavourite,
    TResult Function(Product product)? removeFromFavourite,
    TResult Function()? clearFavouriteProducts,
    TResult Function()? saveFavouriteProducts,
    required TResult orElse(),
  }) {
    if (clearFavouriteProducts != null) {
      return clearFavouriteProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) get,
    required TResult Function(_AddToFavourite value) addToFavourite,
    required TResult Function(_RemoveFromFavourite value) removeFromFavourite,
    required TResult Function(_ClearFavouriteProducts value)
        clearFavouriteProducts,
    required TResult Function(_SaveFavouriteProducts value)
        saveFavouriteProducts,
  }) {
    return clearFavouriteProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Get value)? get,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeFromFavourite,
    TResult Function(_ClearFavouriteProducts value)? clearFavouriteProducts,
    TResult Function(_SaveFavouriteProducts value)? saveFavouriteProducts,
  }) {
    return clearFavouriteProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? get,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeFromFavourite,
    TResult Function(_ClearFavouriteProducts value)? clearFavouriteProducts,
    TResult Function(_SaveFavouriteProducts value)? saveFavouriteProducts,
    required TResult orElse(),
  }) {
    if (clearFavouriteProducts != null) {
      return clearFavouriteProducts(this);
    }
    return orElse();
  }
}

abstract class _ClearFavouriteProducts implements FavouriteProductsEvent {
  const factory _ClearFavouriteProducts() = _$_ClearFavouriteProducts;
}

/// @nodoc
abstract class _$$_SaveFavouriteProductsCopyWith<$Res> {
  factory _$$_SaveFavouriteProductsCopyWith(_$_SaveFavouriteProducts value,
          $Res Function(_$_SaveFavouriteProducts) then) =
      __$$_SaveFavouriteProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveFavouriteProductsCopyWithImpl<$Res>
    extends _$FavouriteProductsEventCopyWithImpl<$Res>
    implements _$$_SaveFavouriteProductsCopyWith<$Res> {
  __$$_SaveFavouriteProductsCopyWithImpl(_$_SaveFavouriteProducts _value,
      $Res Function(_$_SaveFavouriteProducts) _then)
      : super(_value, (v) => _then(v as _$_SaveFavouriteProducts));

  @override
  _$_SaveFavouriteProducts get _value =>
      super._value as _$_SaveFavouriteProducts;
}

/// @nodoc

class _$_SaveFavouriteProducts implements _SaveFavouriteProducts {
  const _$_SaveFavouriteProducts();

  @override
  String toString() {
    return 'FavouriteProductsEvent.saveFavouriteProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveFavouriteProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function(Product product) addToFavourite,
    required TResult Function(Product product) removeFromFavourite,
    required TResult Function() clearFavouriteProducts,
    required TResult Function() saveFavouriteProducts,
  }) {
    return saveFavouriteProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(Product product)? addToFavourite,
    TResult Function(Product product)? removeFromFavourite,
    TResult Function()? clearFavouriteProducts,
    TResult Function()? saveFavouriteProducts,
  }) {
    return saveFavouriteProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(Product product)? addToFavourite,
    TResult Function(Product product)? removeFromFavourite,
    TResult Function()? clearFavouriteProducts,
    TResult Function()? saveFavouriteProducts,
    required TResult orElse(),
  }) {
    if (saveFavouriteProducts != null) {
      return saveFavouriteProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) get,
    required TResult Function(_AddToFavourite value) addToFavourite,
    required TResult Function(_RemoveFromFavourite value) removeFromFavourite,
    required TResult Function(_ClearFavouriteProducts value)
        clearFavouriteProducts,
    required TResult Function(_SaveFavouriteProducts value)
        saveFavouriteProducts,
  }) {
    return saveFavouriteProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Get value)? get,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeFromFavourite,
    TResult Function(_ClearFavouriteProducts value)? clearFavouriteProducts,
    TResult Function(_SaveFavouriteProducts value)? saveFavouriteProducts,
  }) {
    return saveFavouriteProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? get,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeFromFavourite,
    TResult Function(_ClearFavouriteProducts value)? clearFavouriteProducts,
    TResult Function(_SaveFavouriteProducts value)? saveFavouriteProducts,
    required TResult orElse(),
  }) {
    if (saveFavouriteProducts != null) {
      return saveFavouriteProducts(this);
    }
    return orElse();
  }
}

abstract class _SaveFavouriteProducts implements FavouriteProductsEvent {
  const factory _SaveFavouriteProducts() = _$_SaveFavouriteProducts;
}

/// @nodoc
mixin _$FavouriteProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> favouriteProducts) success,
    required TResult Function(String message) failure,
    required TResult Function() addProductToFavouriteSuccess,
    required TResult Function() removeProductFromFavouriteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favouriteProducts)? success,
    TResult Function(String message)? failure,
    TResult Function()? addProductToFavouriteSuccess,
    TResult Function()? removeProductFromFavouriteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favouriteProducts)? success,
    TResult Function(String message)? failure,
    TResult Function()? addProductToFavouriteSuccess,
    TResult Function()? removeProductFromFavouriteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddProductToFavouriteSuccess value)
        addProductToFavouriteSuccess,
    required TResult Function(_RemoveProductFromFavouriteSuccess value)
        removeProductFromFavouriteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddProductToFavouriteSuccess value)?
        addProductToFavouriteSuccess,
    TResult Function(_RemoveProductFromFavouriteSuccess value)?
        removeProductFromFavouriteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddProductToFavouriteSuccess value)?
        addProductToFavouriteSuccess,
    TResult Function(_RemoveProductFromFavouriteSuccess value)?
        removeProductFromFavouriteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteProductsStateCopyWith<$Res> {
  factory $FavouriteProductsStateCopyWith(FavouriteProductsState value,
          $Res Function(FavouriteProductsState) then) =
      _$FavouriteProductsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavouriteProductsStateCopyWithImpl<$Res>
    implements $FavouriteProductsStateCopyWith<$Res> {
  _$FavouriteProductsStateCopyWithImpl(this._value, this._then);

  final FavouriteProductsState _value;
  // ignore: unused_field
  final $Res Function(FavouriteProductsState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FavouriteProductsStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FavouriteProductsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> favouriteProducts) success,
    required TResult Function(String message) failure,
    required TResult Function() addProductToFavouriteSuccess,
    required TResult Function() removeProductFromFavouriteSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favouriteProducts)? success,
    TResult Function(String message)? failure,
    TResult Function()? addProductToFavouriteSuccess,
    TResult Function()? removeProductFromFavouriteSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favouriteProducts)? success,
    TResult Function(String message)? failure,
    TResult Function()? addProductToFavouriteSuccess,
    TResult Function()? removeProductFromFavouriteSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddProductToFavouriteSuccess value)
        addProductToFavouriteSuccess,
    required TResult Function(_RemoveProductFromFavouriteSuccess value)
        removeProductFromFavouriteSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddProductToFavouriteSuccess value)?
        addProductToFavouriteSuccess,
    TResult Function(_RemoveProductFromFavouriteSuccess value)?
        removeProductFromFavouriteSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddProductToFavouriteSuccess value)?
        addProductToFavouriteSuccess,
    TResult Function(_RemoveProductFromFavouriteSuccess value)?
        removeProductFromFavouriteSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavouriteProductsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$FavouriteProductsStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'FavouriteProductsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> favouriteProducts) success,
    required TResult Function(String message) failure,
    required TResult Function() addProductToFavouriteSuccess,
    required TResult Function() removeProductFromFavouriteSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favouriteProducts)? success,
    TResult Function(String message)? failure,
    TResult Function()? addProductToFavouriteSuccess,
    TResult Function()? removeProductFromFavouriteSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favouriteProducts)? success,
    TResult Function(String message)? failure,
    TResult Function()? addProductToFavouriteSuccess,
    TResult Function()? removeProductFromFavouriteSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddProductToFavouriteSuccess value)
        addProductToFavouriteSuccess,
    required TResult Function(_RemoveProductFromFavouriteSuccess value)
        removeProductFromFavouriteSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddProductToFavouriteSuccess value)?
        addProductToFavouriteSuccess,
    TResult Function(_RemoveProductFromFavouriteSuccess value)?
        removeProductFromFavouriteSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddProductToFavouriteSuccess value)?
        addProductToFavouriteSuccess,
    TResult Function(_RemoveProductFromFavouriteSuccess value)?
        removeProductFromFavouriteSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FavouriteProductsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call({List<Product> favouriteProducts});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$FavouriteProductsStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? favouriteProducts = freezed,
  }) {
    return _then(_$_Success(
      favouriteProducts: favouriteProducts == freezed
          ? _value._favouriteProducts
          : favouriteProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({final List<Product> favouriteProducts = const []})
      : _favouriteProducts = favouriteProducts;

  final List<Product> _favouriteProducts;
  @override
  @JsonKey()
  List<Product> get favouriteProducts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouriteProducts);
  }

  @override
  String toString() {
    return 'FavouriteProductsState.success(favouriteProducts: $favouriteProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality()
                .equals(other._favouriteProducts, _favouriteProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favouriteProducts));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> favouriteProducts) success,
    required TResult Function(String message) failure,
    required TResult Function() addProductToFavouriteSuccess,
    required TResult Function() removeProductFromFavouriteSuccess,
  }) {
    return success(favouriteProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favouriteProducts)? success,
    TResult Function(String message)? failure,
    TResult Function()? addProductToFavouriteSuccess,
    TResult Function()? removeProductFromFavouriteSuccess,
  }) {
    return success?.call(favouriteProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favouriteProducts)? success,
    TResult Function(String message)? failure,
    TResult Function()? addProductToFavouriteSuccess,
    TResult Function()? removeProductFromFavouriteSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(favouriteProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddProductToFavouriteSuccess value)
        addProductToFavouriteSuccess,
    required TResult Function(_RemoveProductFromFavouriteSuccess value)
        removeProductFromFavouriteSuccess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddProductToFavouriteSuccess value)?
        addProductToFavouriteSuccess,
    TResult Function(_RemoveProductFromFavouriteSuccess value)?
        removeProductFromFavouriteSuccess,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddProductToFavouriteSuccess value)?
        addProductToFavouriteSuccess,
    TResult Function(_RemoveProductFromFavouriteSuccess value)?
        removeProductFromFavouriteSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements FavouriteProductsState {
  const factory _Success({final List<Product> favouriteProducts}) = _$_Success;

  List<Product> get favouriteProducts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$FavouriteProductsStateCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Failure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FavouriteProductsState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> favouriteProducts) success,
    required TResult Function(String message) failure,
    required TResult Function() addProductToFavouriteSuccess,
    required TResult Function() removeProductFromFavouriteSuccess,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favouriteProducts)? success,
    TResult Function(String message)? failure,
    TResult Function()? addProductToFavouriteSuccess,
    TResult Function()? removeProductFromFavouriteSuccess,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favouriteProducts)? success,
    TResult Function(String message)? failure,
    TResult Function()? addProductToFavouriteSuccess,
    TResult Function()? removeProductFromFavouriteSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddProductToFavouriteSuccess value)
        addProductToFavouriteSuccess,
    required TResult Function(_RemoveProductFromFavouriteSuccess value)
        removeProductFromFavouriteSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddProductToFavouriteSuccess value)?
        addProductToFavouriteSuccess,
    TResult Function(_RemoveProductFromFavouriteSuccess value)?
        removeProductFromFavouriteSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddProductToFavouriteSuccess value)?
        addProductToFavouriteSuccess,
    TResult Function(_RemoveProductFromFavouriteSuccess value)?
        removeProductFromFavouriteSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements FavouriteProductsState {
  const factory _Failure(final String message) = _$_Failure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddProductToFavouriteSuccessCopyWith<$Res> {
  factory _$$_AddProductToFavouriteSuccessCopyWith(
          _$_AddProductToFavouriteSuccess value,
          $Res Function(_$_AddProductToFavouriteSuccess) then) =
      __$$_AddProductToFavouriteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddProductToFavouriteSuccessCopyWithImpl<$Res>
    extends _$FavouriteProductsStateCopyWithImpl<$Res>
    implements _$$_AddProductToFavouriteSuccessCopyWith<$Res> {
  __$$_AddProductToFavouriteSuccessCopyWithImpl(
      _$_AddProductToFavouriteSuccess _value,
      $Res Function(_$_AddProductToFavouriteSuccess) _then)
      : super(_value, (v) => _then(v as _$_AddProductToFavouriteSuccess));

  @override
  _$_AddProductToFavouriteSuccess get _value =>
      super._value as _$_AddProductToFavouriteSuccess;
}

/// @nodoc

class _$_AddProductToFavouriteSuccess implements _AddProductToFavouriteSuccess {
  const _$_AddProductToFavouriteSuccess();

  @override
  String toString() {
    return 'FavouriteProductsState.addProductToFavouriteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddProductToFavouriteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> favouriteProducts) success,
    required TResult Function(String message) failure,
    required TResult Function() addProductToFavouriteSuccess,
    required TResult Function() removeProductFromFavouriteSuccess,
  }) {
    return addProductToFavouriteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favouriteProducts)? success,
    TResult Function(String message)? failure,
    TResult Function()? addProductToFavouriteSuccess,
    TResult Function()? removeProductFromFavouriteSuccess,
  }) {
    return addProductToFavouriteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favouriteProducts)? success,
    TResult Function(String message)? failure,
    TResult Function()? addProductToFavouriteSuccess,
    TResult Function()? removeProductFromFavouriteSuccess,
    required TResult orElse(),
  }) {
    if (addProductToFavouriteSuccess != null) {
      return addProductToFavouriteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddProductToFavouriteSuccess value)
        addProductToFavouriteSuccess,
    required TResult Function(_RemoveProductFromFavouriteSuccess value)
        removeProductFromFavouriteSuccess,
  }) {
    return addProductToFavouriteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddProductToFavouriteSuccess value)?
        addProductToFavouriteSuccess,
    TResult Function(_RemoveProductFromFavouriteSuccess value)?
        removeProductFromFavouriteSuccess,
  }) {
    return addProductToFavouriteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddProductToFavouriteSuccess value)?
        addProductToFavouriteSuccess,
    TResult Function(_RemoveProductFromFavouriteSuccess value)?
        removeProductFromFavouriteSuccess,
    required TResult orElse(),
  }) {
    if (addProductToFavouriteSuccess != null) {
      return addProductToFavouriteSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddProductToFavouriteSuccess implements FavouriteProductsState {
  const factory _AddProductToFavouriteSuccess() =
      _$_AddProductToFavouriteSuccess;
}

/// @nodoc
abstract class _$$_RemoveProductFromFavouriteSuccessCopyWith<$Res> {
  factory _$$_RemoveProductFromFavouriteSuccessCopyWith(
          _$_RemoveProductFromFavouriteSuccess value,
          $Res Function(_$_RemoveProductFromFavouriteSuccess) then) =
      __$$_RemoveProductFromFavouriteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RemoveProductFromFavouriteSuccessCopyWithImpl<$Res>
    extends _$FavouriteProductsStateCopyWithImpl<$Res>
    implements _$$_RemoveProductFromFavouriteSuccessCopyWith<$Res> {
  __$$_RemoveProductFromFavouriteSuccessCopyWithImpl(
      _$_RemoveProductFromFavouriteSuccess _value,
      $Res Function(_$_RemoveProductFromFavouriteSuccess) _then)
      : super(_value, (v) => _then(v as _$_RemoveProductFromFavouriteSuccess));

  @override
  _$_RemoveProductFromFavouriteSuccess get _value =>
      super._value as _$_RemoveProductFromFavouriteSuccess;
}

/// @nodoc

class _$_RemoveProductFromFavouriteSuccess
    implements _RemoveProductFromFavouriteSuccess {
  const _$_RemoveProductFromFavouriteSuccess();

  @override
  String toString() {
    return 'FavouriteProductsState.removeProductFromFavouriteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveProductFromFavouriteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> favouriteProducts) success,
    required TResult Function(String message) failure,
    required TResult Function() addProductToFavouriteSuccess,
    required TResult Function() removeProductFromFavouriteSuccess,
  }) {
    return removeProductFromFavouriteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favouriteProducts)? success,
    TResult Function(String message)? failure,
    TResult Function()? addProductToFavouriteSuccess,
    TResult Function()? removeProductFromFavouriteSuccess,
  }) {
    return removeProductFromFavouriteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favouriteProducts)? success,
    TResult Function(String message)? failure,
    TResult Function()? addProductToFavouriteSuccess,
    TResult Function()? removeProductFromFavouriteSuccess,
    required TResult orElse(),
  }) {
    if (removeProductFromFavouriteSuccess != null) {
      return removeProductFromFavouriteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_AddProductToFavouriteSuccess value)
        addProductToFavouriteSuccess,
    required TResult Function(_RemoveProductFromFavouriteSuccess value)
        removeProductFromFavouriteSuccess,
  }) {
    return removeProductFromFavouriteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddProductToFavouriteSuccess value)?
        addProductToFavouriteSuccess,
    TResult Function(_RemoveProductFromFavouriteSuccess value)?
        removeProductFromFavouriteSuccess,
  }) {
    return removeProductFromFavouriteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_AddProductToFavouriteSuccess value)?
        addProductToFavouriteSuccess,
    TResult Function(_RemoveProductFromFavouriteSuccess value)?
        removeProductFromFavouriteSuccess,
    required TResult orElse(),
  }) {
    if (removeProductFromFavouriteSuccess != null) {
      return removeProductFromFavouriteSuccess(this);
    }
    return orElse();
  }
}

abstract class _RemoveProductFromFavouriteSuccess
    implements FavouriteProductsState {
  const factory _RemoveProductFromFavouriteSuccess() =
      _$_RemoveProductFromFavouriteSuccess;
}
