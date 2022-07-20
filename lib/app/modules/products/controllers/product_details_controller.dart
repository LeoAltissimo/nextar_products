import 'package:mobx/mobx.dart';
import 'package:nextar_products/app/modules/products/models/product_model.dart';
import 'package:nextar_products/app/modules/products/repositories/product_repository_interface.dart';

part 'product_details_controller.g.dart';

class ProductDetailsController = _ProductDetailsControllerBase
    with _$ProductDetailsController;

abstract class _ProductDetailsControllerBase with Store {
  final IProductRepository repository;

  @observable
  ProductModel product = ProductModel();

  _ProductDetailsControllerBase(this.repository);

  @action
  save() async {
    await repository.createProduct(product);
  }

  @action
  update() {
    if (product.reference != null) {
      repository.updateProduct(product);
    }
  }

  @action
  delete() {
    if (product.reference != null) {
      repository.createProduct(product);
    }
  }
}
