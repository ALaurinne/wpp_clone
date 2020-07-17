import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:whatsapp_clone/app/shared/services/auth/auth_service.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  // chama auth com o AuthService
  final AuthService auth;

  _LoginControllerBase(this.auth);

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
}
