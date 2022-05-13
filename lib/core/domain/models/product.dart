import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@Freezed()
class Product with _$Product {
  const factory Product({
    required int id,
    required String name,
    required double price,
    required String imageUrl,
    required String description,
    required String nutritionValue,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}