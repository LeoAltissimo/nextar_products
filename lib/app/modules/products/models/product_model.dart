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

  save() async {
    if (reference == null) {
      reference = await FirebaseFirestore.instance.collection('product').add({
        'name': name,
        'refCode': refCode ?? '',
        'price': price ?? 0.0,
        'qtd': qtd ?? 1,
        'created': created ?? Timestamp.now(),
      });
    } else {
      reference?.update({
        'name': name,
        'refCode': refCode,
        'price': price,
        'qtd': qtd,
      });
    }
  }

  delete() {
    if (reference == null) {
      return null;
    } else {
      reference?.delete();
    }
  }
}
