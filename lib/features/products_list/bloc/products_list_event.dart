part of 'products_list_bloc.dart';

@freezed
class ProductsListEvent with _$ProductsListEvent {
  const factory ProductsListEvent.get({@Default(0) int pageNo}) = _Get;
}