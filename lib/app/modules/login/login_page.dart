import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:whatsapp_clone/app/modules/login/components/singupform/sing_up_page.dart';
import 'package:whatsapp_clone/app/modules/login/components/singinform/sing_in_page.dart';
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
  void initState() {
    controller.verifyLoggedUser();
    super.initState();
  }

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
                child: Image(
                  image: NetworkImage(
                      'https://i0.wp.com/multarte.com.br/wp-content/uploads/2018/11/logo-whatsapp-sem-fundo.png?fit=2400%2C2400&ssl=1'),
                ),
              ),
              Observer(
                builder: (_) {
                  return controller.inLogin
                      ? SingInPage(
                          singUpButton: controller.singUpButton,
                        )
                      : SingUpPage(
                          alreadyHaveAccount: controller.alreadyHaveAccount,
                        );
                },
              ),
            ],
          )),
    );
  }
}
