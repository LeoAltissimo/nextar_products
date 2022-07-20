class AuthModel {
  String email = "";
  String password = "";
  String? code;
  String? verificationId;

  AuthModel({
    this.email = "",
    this.password = "",
    this.verificationId,
    this.code,
  });
}
