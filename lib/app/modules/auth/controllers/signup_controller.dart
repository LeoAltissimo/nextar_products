import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:nextar_products/app/modules/auth/models/signup_model.dart';
import 'package:nextar_products/app/modules/auth/repositories/auth_repository_interface.dart';

part 'signup_controller.g.dart';

class SignupController = _SignupController with _$SignupController;

abstract class _SignupController with Store {
  final IAuthRepository repository;

  _SignupController(this.repository);

  @observable
  SignupModel userData = SignupModel();

  @observable
  bool showPassField = false;

  @observable
  bool showConfirmPassField = false;

  @action
  Future<void> makeSignup() async {
    var result = await repository.makeSigup(
        email: userData.email, password: userData.password);

    result.fold((l) => {print("ERROR TO MAKE AUTH")},
        (r) => (Modular.to.pushNamedAndRemoveUntil("/home", (_) => false)));
  }
}
