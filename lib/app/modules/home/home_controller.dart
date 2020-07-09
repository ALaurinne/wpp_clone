import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:whatsapp_clone/app/shared/auth/services/auth_service.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final AuthService auth;

  @observable
  String textSearch = '';

  @action
  setTextSearch(String value) {
    return textSearch = value;
  }

  @observable
  bool isSearching = false;

  @action
  searchChat() {
    isSearching = !isSearching;
    textSearch = '';
  }

  @action
  logout() async {
    await auth.getLogout();
    Modular.to.pushReplacementNamed('/');
  }

  _HomeControllerBase(this.auth);
}
