import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:nextar_products/app/modules/auth/models/auth_model.dart';
import 'package:nextar_products/app/modules/auth/repositories/auth_repository_interface.dart';

part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  final IAuthRepository repository;

  _LoginController(this.repository);

  @observable
  AuthModel userData = AuthModel();

  @observable
  bool showPasswordField = false;

  @action
  Future<void> makeAuth() async {
    var result = await repository.makeAtuh(
        email: userData.email, password: userData.password);

    result.fold((l) => {print("ERROR TO MAKE AUTH")},
        (r) => (Modular.to.pushNamedAndRemoveUntil("/home", (_) => false)));
  }

  @action
  void handleShowPasswordField() {
    showPasswordField = !showPasswordField;
  }
}
