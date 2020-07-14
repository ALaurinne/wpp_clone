import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:whatsapp_clone/app/shared/auth/services/auth_service.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  // chama auth com o AuthService
  final AuthService auth;

  _LoginControllerBase(this.auth);

  @observable
  bool naoEntrouNoLogin = false;

  @observable
  bool naoAchouUsuario = false;

  @observable
  bool loading = false;

  @observable
  bool isValid = false;

  @observable
  bool inLogin = true;

  @action
  alreadyHaveAccount(bool value) => inLogin = value;

  singUpButton() {
    if (inLogin == true) {
      return alreadyHaveAccount(false);
    }
    return null;
  }

  verifyLoggedUser() async {
    var user = await auth.getUser();
    if (user != null) {
      Modular.to.pushReplacementNamed('/home', arguments: user);
    }
  }

  @action
  Future loginWithEmail(String email, String password) async {
    if (isValid) {
      try {
        loading = true;
        FirebaseUser user = await auth.getEmailPasswordLogin(email, password);
        Modular.to.pushReplacementNamed('/home', arguments: user);
      } catch (e) {
        loading = false;
        naoAchouUsuario = true;
        print(e.toString());
      }
    }
    naoEntrouNoLogin = true;
  }

  // funciona e salva no firebase
  // não parece com o que foi mostrado anteriormente
  @action
  Future createAccountWithEmail(String email, String password) async {
    if (isValid) {
      try {
        loading = true;
        FirebaseUser user = await auth.setUser(email, password);
        Modular.to.pushReplacementNamed('/home', arguments: user);
        return user;
      } catch (e) {
        loading = false;
        naoAchouUsuario = true;
        print(e.toString());
        return e;
      }
    }
    naoEntrouNoLogin = true;
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

  // Validação do campo de senha
  @action
  String nameValidation(String value) {
    if (value.isEmpty) {
      return 'Insira seu nome';
    } else if (!value.contains(" ")) {
      return 'Seu nome completo';
    }
    return null;
  }
}
