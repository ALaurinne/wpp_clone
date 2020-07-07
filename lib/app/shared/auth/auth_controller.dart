import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:whatsapp_clone/app/shared/auth/repositories/auth_repository_interface.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final IAuthRepository _authRepository = Modular.get();

  @observable
  FirebaseUser user;

  @action
  Future loginWithEmailPassword(String email, String password) async {
    user = await _authRepository.getEmailPasswordLogin(email, password);
  }

  @action
  Future logout() async {
    return _authRepository.getLogout();
  }

  @action
  setUser(FirebaseUser value) => user = value;

  _AuthControllerBase() {
    _authRepository.getUser().then(setUser);
  }
}
