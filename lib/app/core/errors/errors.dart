abstract class Failure implements Exception {
  String get message;
}

class ConnectionError extends Failure {
  final String message;
  ConnectionError({required this.message});
}

class ErrorLoginEmail extends Failure {
  final String message;
  ErrorLoginEmail({required this.message});
}

class ErrorGetLoggedUser extends Failure {
  final String message;
  ErrorGetLoggedUser({required this.message});
}

class InternalError implements Failure {
  final String message;
  InternalError({required this.message});
}

class CreateNewProductError implements Failure {
  final String message;
  CreateNewProductError({required this.message});
}

class UpdateProductError implements Failure {
  final String message;
  UpdateProductError({required this.message});
}

class DeleteProductError implements Failure {
  final String message;
  DeleteProductError({required this.message});
}
