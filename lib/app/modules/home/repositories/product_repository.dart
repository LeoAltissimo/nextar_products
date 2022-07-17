import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nextar_products/app/modules/home/models/product_model.dart';
import 'package:nextar_products/app/modules/home/repositories/product_repository_interface.dart';

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
}
