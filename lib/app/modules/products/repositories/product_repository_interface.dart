import 'package:dartz/dartz.dart';
import 'package:nextar_products/app/core/errors/errors.dart';
import 'package:nextar_products/app/modules/products/models/product_model.dart';

abstract class IProductRepository {
  Stream<List<ProductModel>> getProducts();
  Future<Either<Failure, bool>> createProduct(ProductModel newProduct);
  Future<Either<Failure, bool>> updateProduct(ProductModel product);
  Future<Either<Failure, bool>> deleteProduct(ProductModel product);
}
