import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:whatsapp_clone/app/shared/auth/services/auth_service.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  // chama auth com o controller do AuthController
  final AuthService auth;

  @observable
  FirebaseUser user;

  @observable
  bool loading = false;

  @observable
  bool isValid = false;

  @action
  Future loginWithEmail(String email, String password) async {
    if (isValid) {
      try {
        loading = true;
        user = await auth.getEmailPasswordLogin(email, password);
        Modular.to.pushReplacementNamed('/home', arguments: user);
      } catch (e) {
        print(e.toString());
        loading = false;
      }
    }
  }

  // Valida forms como um todo
  @action
  formsValidation(formKey) =>
      isValid = formKey.currentState.validate() ? true : false;

  // Validação do campo de email
  @action
  String emailValidation(String value) {
    if (value.isEmpty) {
      return 'Insira seu email';
    } else if (!value.contains("@")) {
      return 'Formato de email invalido';
    }
    return null;
  }

  // Validação do campo de senha
  @action
  String passwordValidation(String value) {
    if (value.isEmpty) {
      return 'Insira sua senha';
    } else if (value.length < 6) {
      return 'A senha tem no mínimo 6 digitos';
    }
    return null;
  }

  // Colocando o usuario como o validado
  @action
  setUser(FirebaseUser value) => user = value;

  _LoginControllerBase(this.auth) {
    auth.getUser().then(setUser);
  }
}
