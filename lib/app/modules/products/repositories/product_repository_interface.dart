import 'package:nextar_products/app/modules/products/models/product_model.dart';

abstract class IProductRepository {
  Stream<List<ProductModel>> getProducts();
}
