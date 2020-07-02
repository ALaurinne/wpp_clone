import 'package:mobx/mobx.dart';

part 'appbartitle_controller.g.dart';

class AppbartitleController = _AppbartitleControllerBase
    with _$AppbartitleController;

abstract class _AppbartitleControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
