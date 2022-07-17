import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nextar_products/app/modules/home/home_store.dart';
import 'package:nextar_products/app/modules/home/models/product_model.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Observer(
        builder: (_) {
          final list = controller.productList?.data;

          if (controller.productList?.hasError == true) {
            return Center(
              child: ElevatedButton(
                onPressed: controller.getList,
                child: const Text('Error'),
              ),
            );
          }

          if (controller.productList?.data == null) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: list?.length ?? 0,
            itemBuilder: (_, index) {
              ProductModel model = list[index];
              return ListTile(
                title: Text(model.name ?? ""),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.green,
                    size: 18,
                  ),
                  onPressed: () {
                    _showDialog(model);
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showDialog,
        child: const Icon(Icons.add),
      ),
    );
  }

  _showDialog([ProductModel? product]) {
    product ??= ProductModel();

    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text(
              (product!.reference != null) ? "Editar" : "Adicionar um novo"),
          content: TextField(
            onChanged: (value) => product!.name = value,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Escreva...',
            ),
          ),
          actions: <Widget>[
            if (product.reference != null)
              TextButton(
                  onPressed: () async {
                    await product!.delete();
                    Modular.to.pop();
                  },
                  child: const Text("Deletar")),
            TextButton(
                onPressed: () async {
                  await product!.save();
                  Modular.to.pop();
                },
                child: const Text("Adicionar")),
            TextButton(
                onPressed: () {
                  Modular.to.pop();
                },
                child: const Text("Cancelar")),
          ],
        );
      },
    );
  }
}
