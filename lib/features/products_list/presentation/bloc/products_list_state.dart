part of 'products_list_bloc.dart';

@freezed
class ProductsListState with _$ProductsListState {
  const factory ProductsListState.loading() = _Loading;
  const factory ProductsListState.success({
    @Default([]) List<Product> products,
    @Default(false) bool hasReachedMax,
  }) = _Success;
  const factory ProductsListState.failure(String error) = _Failure;
}
