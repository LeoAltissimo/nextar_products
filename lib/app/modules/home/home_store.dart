import 'package:mobx/mobx.dart';
import 'package:nextar_products/app/modules/home/models/product_model.dart';
import 'package:nextar_products/app/modules/home/repositories/product_repository_interface.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  final IProductRepository repository;

  @observable
  ObservableStream<List<ProductModel>>? productList;

  _HomeStoreBase(this.repository) {
    getList();
  }

  @action
  getList() {
    productList = repository.getProducts().asObservable();
  }
}
