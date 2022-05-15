// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incrementQuantity,
    required TResult Function() decrementQuantity,
    required TResult Function() resetQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? incrementQuantity,
    TResult Function()? decrementQuantity,
    TResult Function()? resetQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incrementQuantity,
    TResult Function()? decrementQuantity,
    TResult Function()? resetQuantity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncrementQuantity value) incrementQuantity,
    required TResult Function(_DecrementQuantity value) decrementQuantity,
    required TResult Function(_ResetQuantity value) resetQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    TResult Function(_ResetQuantity value)? resetQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    TResult Function(_ResetQuantity value)? resetQuantity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsEventCopyWith<$Res> {
  factory $ProductDetailsEventCopyWith(
          ProductDetailsEvent value, $Res Function(ProductDetailsEvent) then) =
      _$ProductDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductDetailsEventCopyWithImpl<$Res>
    implements $ProductDetailsEventCopyWith<$Res> {
  _$ProductDetailsEventCopyWithImpl(this._value, this._then);

  final ProductDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(ProductDetailsEvent) _then;
}

/// @nodoc
abstract class _$$_IncrementQuantityCopyWith<$Res> {
  factory _$$_IncrementQuantityCopyWith(_$_IncrementQuantity value,
          $Res Function(_$_IncrementQuantity) then) =
      __$$_IncrementQuantityCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IncrementQuantityCopyWithImpl<$Res>
    extends _$ProductDetailsEventCopyWithImpl<$Res>
    implements _$$_IncrementQuantityCopyWith<$Res> {
  __$$_IncrementQuantityCopyWithImpl(
      _$_IncrementQuantity _value, $Res Function(_$_IncrementQuantity) _then)
      : super(_value, (v) => _then(v as _$_IncrementQuantity));

  @override
  _$_IncrementQuantity get _value => super._value as _$_IncrementQuantity;
}

/// @nodoc

class _$_IncrementQuantity implements _IncrementQuantity {
  const _$_IncrementQuantity();

  @override
  String toString() {
    return 'ProductDetailsEvent.incrementQuantity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IncrementQuantity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incrementQuantity,
    required TResult Function() decrementQuantity,
    required TResult Function() resetQuantity,
  }) {
    return incrementQuantity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? incrementQuantity,
    TResult Function()? decrementQuantity,
    TResult Function()? resetQuantity,
  }) {
    return incrementQuantity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incrementQuantity,
    TResult Function()? decrementQuantity,
    TResult Function()? resetQuantity,
    required TResult orElse(),
  }) {
    if (incrementQuantity != null) {
      return incrementQuantity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncrementQuantity value) incrementQuantity,
    required TResult Function(_DecrementQuantity value) decrementQuantity,
    required TResult Function(_ResetQuantity value) resetQuantity,
  }) {
    return incrementQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    TResult Function(_ResetQuantity value)? resetQuantity,
  }) {
    return incrementQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    TResult Function(_ResetQuantity value)? resetQuantity,
    required TResult orElse(),
  }) {
    if (incrementQuantity != null) {
      return incrementQuantity(this);
    }
    return orElse();
  }
}

abstract class _IncrementQuantity implements ProductDetailsEvent {
  const factory _IncrementQuantity() = _$_IncrementQuantity;
}

/// @nodoc
abstract class _$$_DecrementQuantityCopyWith<$Res> {
  factory _$$_DecrementQuantityCopyWith(_$_DecrementQuantity value,
          $Res Function(_$_DecrementQuantity) then) =
      __$$_DecrementQuantityCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DecrementQuantityCopyWithImpl<$Res>
    extends _$ProductDetailsEventCopyWithImpl<$Res>
    implements _$$_DecrementQuantityCopyWith<$Res> {
  __$$_DecrementQuantityCopyWithImpl(
      _$_DecrementQuantity _value, $Res Function(_$_DecrementQuantity) _then)
      : super(_value, (v) => _then(v as _$_DecrementQuantity));

  @override
  _$_DecrementQuantity get _value => super._value as _$_DecrementQuantity;
}

/// @nodoc

class _$_DecrementQuantity implements _DecrementQuantity {
  const _$_DecrementQuantity();

  @override
  String toString() {
    return 'ProductDetailsEvent.decrementQuantity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DecrementQuantity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incrementQuantity,
    required TResult Function() decrementQuantity,
    required TResult Function() resetQuantity,
  }) {
    return decrementQuantity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? incrementQuantity,
    TResult Function()? decrementQuantity,
    TResult Function()? resetQuantity,
  }) {
    return decrementQuantity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incrementQuantity,
    TResult Function()? decrementQuantity,
    TResult Function()? resetQuantity,
    required TResult orElse(),
  }) {
    if (decrementQuantity != null) {
      return decrementQuantity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncrementQuantity value) incrementQuantity,
    required TResult Function(_DecrementQuantity value) decrementQuantity,
    required TResult Function(_ResetQuantity value) resetQuantity,
  }) {
    return decrementQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    TResult Function(_ResetQuantity value)? resetQuantity,
  }) {
    return decrementQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    TResult Function(_ResetQuantity value)? resetQuantity,
    required TResult orElse(),
  }) {
    if (decrementQuantity != null) {
      return decrementQuantity(this);
    }
    return orElse();
  }
}

abstract class _DecrementQuantity implements ProductDetailsEvent {
  const factory _DecrementQuantity() = _$_DecrementQuantity;
}

/// @nodoc
abstract class _$$_ResetQuantityCopyWith<$Res> {
  factory _$$_ResetQuantityCopyWith(
          _$_ResetQuantity value, $Res Function(_$_ResetQuantity) then) =
      __$$_ResetQuantityCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetQuantityCopyWithImpl<$Res>
    extends _$ProductDetailsEventCopyWithImpl<$Res>
    implements _$$_ResetQuantityCopyWith<$Res> {
  __$$_ResetQuantityCopyWithImpl(
      _$_ResetQuantity _value, $Res Function(_$_ResetQuantity) _then)
      : super(_value, (v) => _then(v as _$_ResetQuantity));

  @override
  _$_ResetQuantity get _value => super._value as _$_ResetQuantity;
}

/// @nodoc

class _$_ResetQuantity implements _ResetQuantity {
  const _$_ResetQuantity();

  @override
  String toString() {
    return 'ProductDetailsEvent.resetQuantity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetQuantity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incrementQuantity,
    required TResult Function() decrementQuantity,
    required TResult Function() resetQuantity,
  }) {
    return resetQuantity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? incrementQuantity,
    TResult Function()? decrementQuantity,
    TResult Function()? resetQuantity,
  }) {
    return resetQuantity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incrementQuantity,
    TResult Function()? decrementQuantity,
    TResult Function()? resetQuantity,
    required TResult orElse(),
  }) {
    if (resetQuantity != null) {
      return resetQuantity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncrementQuantity value) incrementQuantity,
    required TResult Function(_DecrementQuantity value) decrementQuantity,
    required TResult Function(_ResetQuantity value) resetQuantity,
  }) {
    return resetQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    TResult Function(_ResetQuantity value)? resetQuantity,
  }) {
    return resetQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    TResult Function(_ResetQuantity value)? resetQuantity,
    required TResult orElse(),
  }) {
    if (resetQuantity != null) {
      return resetQuantity(this);
    }
    return orElse();
  }
}

abstract class _ResetQuantity implements ProductDetailsEvent {
  const factory _ResetQuantity() = _$_ResetQuantity;
}

/// @nodoc
mixin _$ProductDetailsState {
  int get quantity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int quantity) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int quantity)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int quantity)? initial,
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
  $ProductDetailsStateCopyWith<ProductDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsStateCopyWith<$Res> {
  factory $ProductDetailsStateCopyWith(
          ProductDetailsState value, $Res Function(ProductDetailsState) then) =
      _$ProductDetailsStateCopyWithImpl<$Res>;
  $Res call({int quantity});
}

/// @nodoc
class _$ProductDetailsStateCopyWithImpl<$Res>
    implements $ProductDetailsStateCopyWith<$Res> {
  _$ProductDetailsStateCopyWithImpl(this._value, this._then);

  final ProductDetailsState _value;
  // ignore: unused_field
  final $Res Function(ProductDetailsState) _then;

  @override
  $Res call({
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ProductDetailsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({int quantity});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? quantity = freezed,
  }) {
    return _then(_$_Initial(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.quantity = 1});

  @override
  @JsonKey()
  final int quantity;

  @override
  String toString() {
    return 'ProductDetailsState.initial(quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int quantity) initial,
  }) {
    return initial(quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int quantity)? initial,
  }) {
    return initial?.call(quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int quantity)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(quantity);
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

abstract class _Initial implements ProductDetailsState {
  const factory _Initial({final int quantity}) = _$_Initial;

  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
