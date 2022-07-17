import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nextar_products/app/modules/auth/controllers/login_controller.dart';

class LoginView extends StatefulWidget {
  final String title;
  const LoginView({Key? key, this.title = "Entrar"}) : super(key: key);

  @override
  _LoginView createState() => _LoginView();
}

class _LoginView extends ModularState<LoginView, LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrar"),
      ),
      body: Observer(builder: (_) {
        return Container(
            child: Column(children: [
          BackButton(
            onPressed: () {
              Modular.to.pushNamedAndRemoveUntil("/home", (_) => false);
            },
          ),
          TextField(
              decoration: const InputDecoration(
                labelText: 'E-nmail',
              ),
              onChanged: (value) {
                controller.userData.user.email = value;
              }),
          TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: Text(controller.userData.user!.email ?? "Errou"),
                      );
                    });
              },
              child: const Text("Deletar")),
        ]));
      }),
    );
  }
}
