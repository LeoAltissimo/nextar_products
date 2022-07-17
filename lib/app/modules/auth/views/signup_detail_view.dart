import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nextar_products/app/modules/auth/controllers/signup_controller.dart';

class SignupView extends StatefulWidget {
  final String title;
  const SignupView({Key? key, this.title = "Cadastro"}) : super(key: key);

  @override
  _SignupView createState() => _SignupView();
}

class _SignupView extends ModularState<SignupView, SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
      ),
      body: Observer(builder: (_) {
        return const Text("TELA DE CADASTRO");
      }),
    );
  }
}
