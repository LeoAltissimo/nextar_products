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

  fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    refCode = json['refCode'];
    price = json['price'];
    qtd = json['qtd'];
    created = json['created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['refCode'] = this.refCode;
    data['price'] = this.price;
    data['qtd'] = this.qtd;
    data['created'] = this.created;
    return data;
  }
}
