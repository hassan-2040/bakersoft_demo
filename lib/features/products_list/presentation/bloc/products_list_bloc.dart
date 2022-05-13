import 'package:bakersoft_demo/core/domain/models/product.dart';
import 'package:bakersoft_demo/core/error/custom_error_responses.dart';
import 'package:bakersoft_demo/features/products_list/domain/use_cases/get_all_products.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'products_list_event.dart';
part 'products_list_state.dart';
part 'products_list_bloc.freezed.dart';

class ProductsListBloc extends Bloc<ProductsListEvent, ProductsListState> {
  final GetAllProducts _getAllProducts;
  late _Success _previousSuccessState;
  ProductsListBloc(this._getAllProducts) : super(const _Loading()) {
    on<_Get>(onGet);
  }

  Future<void> onGet(event, emit) async {
    emit(const _Loading());
    try {
      final _products = await _getAllProducts(event.pageNo);
      if (event.pageNo == 0) {
        _previousSuccessState = _Success(products: _products);
        emit(_previousSuccessState);
      } else {
        emit(_previousSuccessState.copyWith(products: _products));
      }
    } catch (_error) {
      emit(_Failure(customErrorResponses(_error)));
    }
  }
}
