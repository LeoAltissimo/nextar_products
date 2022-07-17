import 'package:flutter_modular/flutter_modular.dart';
import 'package:nextar_products/app/modules/auth/controllers/login_controller.dart';
import 'package:nextar_products/app/modules/auth/controllers/signup_controller.dart';
import 'package:nextar_products/app/modules/auth/views/login_view.dart';
import 'package:nextar_products/app/modules/auth/views/signup_detail_view.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginController()),
    Bind.lazySingleton((i) => SignupController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => LoginView()),
    ChildRoute("/signup", child: (_, args) => SignupView()),
  ];
}
