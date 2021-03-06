import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:whatsapp_clone/app/shared/services/auth/auth_service.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final AuthService auth;

  @observable
  String textSearch = '';

  @observable
  bool isSearching = false;

  // Define o valor do texto de busca
  @action
  setTextSearch(String value) => textSearch = value;

  // Define o valor de busca
  @action
  setIsSearching(bool value) => isSearching = value;

  // Chama as funções de texto e busca
  searchChat(bool value) {
    setIsSearching(value);
    setTextSearch('');
  }

  verifyLoggedUser() async {
    var user = await auth.getUser();
    if (user == null) {
      Modular.to.pushReplacementNamed('/');
    }
  }

  // Sai da conta logada
  logout() async {
    await auth.getLogout();
    Modular.to.pushReplacementNamed('/');
  }

  _HomeControllerBase(this.auth);
}
