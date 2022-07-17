import 'package:flutter_modular/flutter_modular.dart';
import 'package:nextar_products/app/modules/auth/auth_module.dart';
import 'package:nextar_products/app/modules/products/products_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: AuthModule()),
    ModuleRoute("/home", module: ProductsModule()),
  ];
}
