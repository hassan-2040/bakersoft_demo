import 'package:bakersoft_demo/features/products_list/bloc/products_list_bloc.dart';
import 'package:bakersoft_demo/features/products_list/pages/products_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/data/data_sources/products_local_data_source.dart';
import 'core/domain/repositories/products_repository.dart';
import 'core/domain/use_cases/get_all_products.dart';

void main() {
  runApp(const MyApp());
}
//TODO implement app router
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductsListBloc>(
          create: (context) => ProductsListBloc(
            GetAllProducts(
              productsRepository: ProductsRepository(
                localDataSource: ProductsLocalDataSource(),              
              ),
            ),
          )..add(const ProductsListEvent.get()),
        ),
      ],
      child: MaterialApp(
        title: 'Bakersoft Demo',
        theme: ThemeData(
          primarySwatch: Colors.lime,
        ),
        home: const ProductsListPage(),
      ),
    );
  }
}
