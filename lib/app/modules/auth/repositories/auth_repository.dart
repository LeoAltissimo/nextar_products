import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nextar_products/app/core/errors/errors.dart';
import 'package:nextar_products/app/modules/auth/models/user_model.dart';
import 'package:nextar_products/app/modules/auth/repositories/auth_repository_interface.dart';

class AuthRepository implements IAuthRepository {
  FirebaseAuth auth = FirebaseAuth.instance;

  AuthRepository();

  @override
  Future<Either<Failure, UserModel>> loggedUser() async {
    try {
      var result = await auth.currentUser;
      if (result == null) throw Error();

      var user = UserModel(
        name: result.displayName ?? '',
        phoneNumber: result.phoneNumber,
        email: result.email ?? '',
      );
      return Right(user);
    } catch (e) {
      return Left(ErrorGetLoggedUser(
          message: "Error ao tentar recuperar usuario atual logado"));
    }
  }

  @override
  Future<Either<Failure, UserModel>> makeAtuh(
      {required String email, required String password}) async {
    try {
      var result = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      var user = result.user;
      return Right(UserModel(
        name: user?.displayName ?? '',
        phoneNumber: user?.phoneNumber ?? '',
        email: user?.email ?? '',
      ));
    } catch (e) {
      return Left(ErrorLoginEmail(message: "Error login with Email"));
    }
  }

  @override
  Future<Either<Failure, UserModel>> makeSigup(
      {required String email, required String password}) async {
    try {
      var result = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      var user = result.user;
      return Right(UserModel(
        name: user?.displayName ?? '',
        phoneNumber: user?.phoneNumber ?? '',
        email: user?.email ?? '',
      ));
    } catch (e) {
      return Left(ErrorLoginEmail(message: "Error login with Email"));
    }
  }
}
