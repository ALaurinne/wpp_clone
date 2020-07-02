import 'package:mobx/mobx.dart';

part 'story_view_controller.g.dart';

class StoryViewController = _StoryViewControllerBase with _$StoryViewController;

abstract class _StoryViewControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
