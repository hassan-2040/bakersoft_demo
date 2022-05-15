
import 'package:bakersoft_demo/features/products_list/data_sources/products_local_data_source.dart';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';


class ProductsRepository {
  final ProductsLocalDataSource localDataSource;

  ProductsRepository({
    required this.localDataSource,
  });

  Future<List<Product>> getAllProducts(int _pageNo) async {
    try {
      final _list = await localDataSource.getAllProducts(_pageNo);
      return _list.map((e) => Product.fromJson(e)).toList();
    } catch (_) {
      rethrow;
    }
  }
}
