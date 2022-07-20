import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:nextar_products/app/modules/auth/repositories/auth_repository_interface.dart';

part 'welcome_controller.g.dart';

class WelcomeController = _WelcomeController with _$WelcomeController;

abstract class _WelcomeController with Store {
  final IAuthRepository repository;

  _WelcomeController(this.repository);

  @action
  Future<void> checkIsAuthenticated() async {
    var result = await repository.loggedUser();
    result.fold((l) => false,
        (r) => Modular.to.pushNamedAndRemoveUntil("/home", (_) => false));
  }
}
