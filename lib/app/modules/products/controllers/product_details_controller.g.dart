// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProductDetailsController on _ProductDetailsControllerBase, Store {
  late final _$productAtom =
      Atom(name: '_ProductDetailsControllerBase.product', context: context);

  @override
  ProductModel get product {
    _$productAtom.reportRead();
    return super.product;
  }

  @override
  set product(ProductModel value) {
    _$productAtom.reportWrite(value, super.product, () {
      super.product = value;
    });
  }

  late final _$saveAsyncAction =
      AsyncAction('_ProductDetailsControllerBase.save', context: context);

  @override
  Future save() {
    return _$saveAsyncAction.run(() => super.save());
  }

  late final _$_ProductDetailsControllerBaseActionController =
      ActionController(name: '_ProductDetailsControllerBase', context: context);

  @override
  dynamic update() {
    final _$actionInfo = _$_ProductDetailsControllerBaseActionController
        .startAction(name: '_ProductDetailsControllerBase.update');
    try {
      return super.update();
    } finally {
      _$_ProductDetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic delete() {
    final _$actionInfo = _$_ProductDetailsControllerBaseActionController
        .startAction(name: '_ProductDetailsControllerBase.delete');
    try {
      return super.delete();
    } finally {
      _$_ProductDetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
product: ${product}
    ''';
  }
}
