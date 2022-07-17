import 'package:nextar_products/app/modules/home/models/product_model.dart';

abstract class IProductRepository {
  Stream<List<ProductModel>> getProducts();
}
