import 'package:dartz/dartz.dart';
import 'package:nextar_products/app/core/errors/errors.dart';
import 'package:nextar_products/app/modules/auth/models/user_model.dart';

abstract class IAuthRepository {
  Future<Either<Failure, UserModel>> loggedUser();
  Future<Either<Failure, UserModel>> makeAtuh(
      {required String email, required String password});
  Future<Either<Failure, UserModel>> makeSigup(
      {required String email, required String password});
}
