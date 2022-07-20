// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginController on _LoginController, Store {
  late final _$userDataAtom =
      Atom(name: '_LoginController.userData', context: context);

  @override
  AuthModel get userData {
    _$userDataAtom.reportRead();
    return super.userData;
  }

  @override
  set userData(AuthModel value) {
    _$userDataAtom.reportWrite(value, super.userData, () {
      super.userData = value;
    });
  }

  late final _$showPasswordFieldAtom =
      Atom(name: '_LoginController.showPasswordField', context: context);

  @override
  bool get showPasswordField {
    _$showPasswordFieldAtom.reportRead();
    return super.showPasswordField;
  }

  @override
  set showPasswordField(bool value) {
    _$showPasswordFieldAtom.reportWrite(value, super.showPasswordField, () {
      super.showPasswordField = value;
    });
  }

  late final _$makeAuthAsyncAction =
      AsyncAction('_LoginController.makeAuth', context: context);

  @override
  Future<void> makeAuth() {
    return _$makeAuthAsyncAction.run(() => super.makeAuth());
  }

  late final _$_LoginControllerActionController =
      ActionController(name: '_LoginController', context: context);

  @override
  void handleShowPasswordField() {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.handleShowPasswordField');
    try {
      return super.handleShowPasswordField();
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userData: ${userData},
showPasswordField: ${showPasswordField}
    ''';
  }
}
