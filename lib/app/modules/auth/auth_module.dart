import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nextar_products/app/modules/auth/controllers/login_controller.dart';
import 'package:nextar_products/app/modules/auth/controllers/signup_controller.dart';
import 'package:nextar_products/app/modules/auth/controllers/welcome_controller.dart';
import 'package:nextar_products/app/modules/auth/repositories/auth_repository.dart';
import 'package:nextar_products/app/modules/auth/views/login_new_view.dart';
import 'package:nextar_products/app/modules/auth/views/welcome_view.dart';
import 'package:nextar_products/app/modules/auth/views/signup_view.dart';
import 'package:nextar_products/app/modules/auth/repositories/auth_repository_interface.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginController(i.get())),
    Bind.lazySingleton((i) => SignupController(i.get())),
    Bind.lazySingleton((i) => WelcomeController(i.get())),
    Bind<IAuthRepository>(((i) => AuthRepository())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => WelcomeView()),
    ChildRoute("/login", child: (_, args) => LoginView()),
    ChildRoute("/signup", child: (_, args) => SignupView()),
  ];
}
