import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nextar_products/app/modules/home/repositories/product_repository.dart';
import 'package:nextar_products/app/modules/home/repositories/product_repository_interface.dart';
import '../home/home_store.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore(i.get())),
    Bind<IProductRepository>(
        ((i) => ProductRepository(FirebaseFirestore.instance))),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
  ];
}
