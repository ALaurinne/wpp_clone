import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:whatsapp_clone/app/modules/home/models/story_list_models.dart';
part 'story_list_controller.g.dart';

class StoryListController = _StoryListControllerBase with _$StoryListController;

abstract class _StoryListControllerBase with Store {
  final List<StoryListItem> storyListItems = [
    StoryListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/s960x960/35362299_1778569952198755_4120467782695387136_o.jpg?_nc_cat=111&_nc_sid=7aed08&_nc_eui2=AeG48n9OQnn5uVvbrEgFV9JzOzVzMPUty7A7NXMw9S3LsN3OQMG-FRq-yxwoHrRl_Idgc6nPde-czYme4FL7R91v&_nc_ohc=ClIYjvV35cYAX9uUwWy&_nc_ht=scontent.fssa7-1.fna&_nc_tp=7&oh=e03d98f72d10b025b3f2f96a4292a2d7&oe=5F3149E0",
      personName: "Laurinne",
      date: "15:00",
    ),
    StoryListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/p720x720/54045011_2152701298118950_931317830836551680_o.jpg?_nc_cat=102&_nc_sid=7aed08&_nc_eui2=AeFulTCTq0b4MWDmEkFtDSphKJ8ZKQSVJ3YonxkpBJUndmGJyTa1_001baGw_O-KyG6cNpxAilClB4qjg4w3IIhF&_nc_ohc=ZQN9zlZKy2kAX9tXRhl&_nc_ht=scontent.fssa7-1.fna&_nc_tp=6&oh=c53fc998c19e3d94f28ef28bd80278a3&oe=5F315FBF",
      personName: "Lau",
      date: "15:00",
    ),
    StoryListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/14963241_1171480026241087_4840890025711582051_n.jpg?_nc_cat=111&_nc_sid=7aed08&_nc_eui2=AeEDr8jDBFF_fuWjXW0119Mn4f4vHgs8Khvh_i8eCzwqG0gAfxQqYlMWG2lBa6SjsupI2syogJ21lto1i-jn3VpS&_nc_ohc=-in1HQGWJHQAX_QAHCB&_nc_ht=scontent.fssa7-1.fna&oh=001e99af23b50ced045e2ca7ab7f577b&oe=5F338438",
      personName: "Oliver",
      date: "15:00",
    ),
  ];

  // Encaminha para a storys
  @action
  accessStorys() => Modular.to.pushNamed('/home/story');
}
