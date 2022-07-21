import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  String? id;
  String? name;
  String? refCode;
  double? price;
  int? qtd;
  Timestamp? created;
  DocumentReference? reference;

  ProductModel(
      {this.id,
      this.name,
      this.refCode,
      this.reference,
      this.price,
      this.qtd,
      this.created});

  factory ProductModel.fromDocument(DocumentSnapshot doc) {
    return ProductModel(
      id: doc.id,
      name: doc['name'],
      reference: doc.reference,
      refCode: doc['refCode'],
      price: doc['price'],
      qtd: doc['qtd'],
      created: doc['created'],
    );
  }

  String getPriceString() {
    if (price != null) {
      return price.toString();
    }

    return "0";
  }

  String getQtdString() {
    if (qtd != null) {
      return qtd.toString();
    }

    return "0";
  }

  bool validToSave() {
    var valid = true;

    if (reference != null) {
      valid = false;
    } else if (name == null && refCode == null) {
      valid = false;
    }

    return valid;
  }

  bool validToUpdate() {
    var valid = true;

    if (reference == null) {
      valid = false;
    } else if (name == null && refCode == null) {
      valid = false;
    }

    return valid;
  }

  setPriceByText(String priceText) {
    var priceFormated = priceText;
    priceFormated = priceFormated.replaceAll('R\$', '');
    priceFormated = priceFormated.replaceAll('.', '');
    priceFormated = priceFormated.replaceAll(',', '.');

    price = double.parse(priceFormated != "" ? priceFormated : '0');
  }

  setQtdByText(String qtdText) {
    qtd = int.parse(qtdText != "" ? qtdText : '0');
  }
}
