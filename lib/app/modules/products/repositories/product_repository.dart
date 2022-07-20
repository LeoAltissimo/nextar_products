import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:nextar_products/app/core/errors/errors.dart';
import 'package:nextar_products/app/modules/products/models/product_model.dart';
import 'package:nextar_products/app/modules/products/repositories/product_repository_interface.dart';

class ProductRepository implements IProductRepository {
  final FirebaseFirestore firestore;

  ProductRepository(this.firestore);

  @override
  Stream<List<ProductModel>> getProducts() {
    return firestore.collection('product').snapshots().map((query) {
      return query.docs.map((doc) {
        return ProductModel.fromDocument(doc);
      }).toList();
    });
  }

  @override
  Future<Either<Failure, bool>> createProduct(ProductModel newProduct) async {
    try {
      await firestore.collection('product').add({
        'name': newProduct.name,
        'refCode': newProduct.refCode,
        'price': newProduct.price,
        'qtd': newProduct.qtd,
        'created': Timestamp.now(),
      });

      return Right(true);
    } catch (e) {
      return Left(
          CreateNewProductError(message: "Erro ao criar um novo produto"));
    }
  }

  @override
  Future<Either<Failure, bool>> updateProduct(ProductModel newProduct) async {
    try {
      await newProduct.reference?.update({
        'name': newProduct.name,
        'refCode': newProduct.refCode,
        'price': newProduct.price,
        'qtd': newProduct.qtd,
        'created': newProduct.created,
      });

      return Right(true);
    } catch (e) {
      return Left(UpdateProductError(message: "Erro ao editar um produto"));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteProduct(ProductModel newProduct) async {
    try {
      await newProduct.reference?.delete();
      return Right(true);
    } catch (e) {
      return Left(DeleteProductError(message: "Erro ao editar um produto"));
    }
  }
}
