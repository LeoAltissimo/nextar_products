import 'package:mobx/mobx.dart';
import 'package:nextar_products/app/modules/auth/models/auth_model.dart';
import 'package:nextar_products/app/modules/auth/models/user_model.dart';

part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  // final ILoginRepositorie repository;

  // _LoginController({this.repository});
  _LoginController();

  @observable
  AuthModel userData = AuthModel();
}
