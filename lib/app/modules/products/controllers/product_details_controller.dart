import 'package:flutter_modular/flutter_modular.dart';
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

  @observable
  bool editView = false;

  _ProductDetailsControllerBase(this.repository);

  @action
  handleArgs(ProductModel? args) {
    if (args?.reference != null) {
      editView = true;
      product = args!;
    }
  }

  @action
  save() async {
    if (product.validToSave() == true) {
      var result = await repository.createProduct(product);
      result.fold((l) => print("Error to save"), (r) => Modular.to.pop());
    }
  }

  @action
  update() async {
    if (product.validToUpdate() == true) {
      var result = await repository.updateProduct(product);
      result.fold((l) => print("Error to Update"), (r) => Modular.to.pop());
    }
  }

  @action
  delete() async {
    if (product.reference != null) {
      var result = await repository.deleteProduct(product);
      result.fold((l) => print("Error to Delete"), (r) => Modular.to.pop());
    }
  }
}
