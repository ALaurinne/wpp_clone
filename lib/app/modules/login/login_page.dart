import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:whatsapp_clone/app/shared/constants/appcolors.dart';
import 'package:whatsapp_clone/app/modules/login/components/loginform/login_form_page.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(40),
          color: Colors.white54,
          // Teclado não ficar em cima das coisas
          child: ListView(
            children: <Widget>[
              // Renderizar imagem com tamanho desejado
              SizedBox(
                height: 200,
                width: 200,
                // child: Image.asset('images/logo.png'),
              ),
              Observer(
                builder: (_) {
                  return LoginForm(
                    emailValidation: controller.emailValidation,
                    passwordValidation: controller.passwordValidation,
                    formsValidation: controller.formsValidation,
                    loginWithEmail: controller.loginWithEmail,
                    loading: controller.loading,
                  );
                },
              )
            ],
          )),
    );
  }
}
