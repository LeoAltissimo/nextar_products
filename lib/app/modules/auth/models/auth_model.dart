import 'package:nextar_products/app/modules/auth/models/user_model.dart';

class AuthModel {
  UserModel user = UserModel();
  String? password;
  String? code;
  String? verificationId;

  AuthModel({
    this.verificationId,
    this.code,
    this.password,
  });
}
