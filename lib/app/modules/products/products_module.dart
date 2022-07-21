import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nextar_products/app/modules/products/controllers/product_details_controller.dart';
import 'package:nextar_products/app/modules/products/controllers/products_controller.dart';
import 'package:nextar_products/app/modules/products/repositories/product_repository.dart';
import 'package:nextar_products/app/modules/products/repositories/product_repository_interface.dart';
import 'package:nextar_products/app/modules/products/views/product_detail_page.dart';
import 'package:nextar_products/app/modules/products/views/products_view.dart';

class ProductsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProductsController(i.get())),
    Bind.lazySingleton((i) => ProductDetailsController(i.get())),
    Bind<IProductRepository>(
        ((i) => ProductRepository(FirebaseFirestore.instance)))
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/products', child: (_, args) => ProductsView()),
    ChildRoute('/productdetails', child: (_, args) => ProductDetailsView()),
  ];
}
