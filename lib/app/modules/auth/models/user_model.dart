import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  String name = "";
  String email = "";
  String? phoneNumber = "";

  UserModel({this.email = "", this.name = "", this.phoneNumber});

  @override
  List<Object> get props => [email!, name!, phoneNumber!];
}
