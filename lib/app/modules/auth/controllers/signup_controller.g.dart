// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignupController on _SignupController, Store {
  late final _$userDataAtom =
      Atom(name: '_SignupController.userData', context: context);

  @override
  SignupModel get userData {
    _$userDataAtom.reportRead();
    return super.userData;
  }

  @override
  set userData(SignupModel value) {
    _$userDataAtom.reportWrite(value, super.userData, () {
      super.userData = value;
    });
  }

  late final _$showPassFieldAtom =
      Atom(name: '_SignupController.showPassField', context: context);

  @override
  bool get showPassField {
    _$showPassFieldAtom.reportRead();
    return super.showPassField;
  }

  @override
  set showPassField(bool value) {
    _$showPassFieldAtom.reportWrite(value, super.showPassField, () {
      super.showPassField = value;
    });
  }

  late final _$showConfirmPassFieldAtom =
      Atom(name: '_SignupController.showConfirmPassField', context: context);

  @override
  bool get showConfirmPassField {
    _$showConfirmPassFieldAtom.reportRead();
    return super.showConfirmPassField;
  }

  @override
  set showConfirmPassField(bool value) {
    _$showConfirmPassFieldAtom.reportWrite(value, super.showConfirmPassField,
        () {
      super.showConfirmPassField = value;
    });
  }

  late final _$makeSignupAsyncAction =
      AsyncAction('_SignupController.makeSignup', context: context);

  @override
  Future<void> makeSignup() {
    return _$makeSignupAsyncAction.run(() => super.makeSignup());
  }

  @override
  String toString() {
    return '''
userData: ${userData},
showPassField: ${showPassField},
showConfirmPassField: ${showConfirmPassField}
    ''';
  }
}
