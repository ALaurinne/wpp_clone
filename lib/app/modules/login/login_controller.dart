import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:whatsapp_clone/app/shared/auth/services/auth_service.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  // chama auth com o controller do AuthController
  AuthService auth = Modular.get();

  @observable
  FirebaseUser user;

  @observable
  bool loading = false;

  @action
  Future loginWithEmail(String email, String password) async {
    try {
      loading = true;
      user = await auth.getEmailPasswordLogin(email, password);

      Modular.to.pushReplacementNamed('/home', arguments: user);
    } catch (e) {
      loading = false;
      print(e.toString());
    }
  }

  @action
  String emailValidation(String value) {
    if (value.isEmpty) {
      return 'Please enter your email';
    } else if (!value.contains("@")) {
      return 'Invalid email format';
    }
    return null;
  }

  @action
  String passwordValidation(String value) {
    return value.isEmpty ? 'Please enter your password' : null;
  }

  @action
  setUser(FirebaseUser value) => user = value;

  _LoginControllerBase() {
    auth.getUser().then(setUser);
  }
}
