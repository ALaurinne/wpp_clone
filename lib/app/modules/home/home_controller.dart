import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
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
}
