
import 'package:bakersoft_demo/core/common_product_features/domain/models/product.dart';
import 'package:bakersoft_demo/core/error/custom_error_responses.dart';
import 'package:bakersoft_demo/core/utilities/constants.dart';
import 'package:bakersoft_demo/features/products_list/domain/use_cases/get_all_products.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_list_event.dart';
part 'products_list_state.dart';
part 'products_list_bloc.freezed.dart';

class ProductsListBloc extends Bloc<ProductsListEvent, ProductsListState> {
  final GetAllProducts _getAllProducts;
  final List<Product> _products = [];
  bool _isInitialState = true; //to show loading indicator on first load/error case
  bool _hasReachedMax = false;
  int _pageNo = 0;

  ProductsListBloc(this._getAllProducts) : super(const _Loading()) {
    on<_Get>(onGet, transformer: droppable());
  }

  Future<void> onGet(event, emit) async {
    
    if (_isInitialState) {
      emit(const _Loading());
    }

    if (_hasReachedMax) return;
    try {
      final _tempList = await _getAllProducts(_pageNo);
      if (_tempList.isEmpty || _tempList.length < productsPageLimit) {
        _hasReachedMax = true;
      }
      if (_pageNo == 0) {
        emit(_Success(
          products: _products,
          hasReachedMax: _hasReachedMax,
        ));
      } else {
        emit(_Success(
          products: [..._products, ..._tempList],
          hasReachedMax: _hasReachedMax,
        ));
      }
      _products.addAll(_tempList);
      _pageNo++;
      _isInitialState = false;
    } catch (_error) {
      emit(_Failure(customErrorResponses(_error)));
    }
  }
}
