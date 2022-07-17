import 'package:mobx/mobx.dart';
import 'package:nextar_products/app/modules/products/models/product_model.dart';
import 'package:nextar_products/app/modules/products/repositories/product_repository_interface.dart';

part 'products_controller.g.dart';

class ProductsController = _ProductsControllerBase with _$ProductsController;

abstract class _ProductsControllerBase with Store {
  final IProductRepository repository;

  @observable
  ObservableStream<List<ProductModel>>? productList;

  _ProductsControllerBase(this.repository) {
    getList();
  }

  @action
  getList() {
    productList = repository.getProducts().asObservable();
  }
}
