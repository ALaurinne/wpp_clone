import 'package:mobx/mobx.dart';

part 'camera_controller.g.dart';

class CameraController = _CameraControllerBase with _$CameraController;

abstract class _CameraControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
