import 'package:mobx/mobx.dart';
import 'package:whatsapp_clone/app/modules/home/models/story_list_models.dart';
part 'story_list_controller.g.dart';

class StoryListController = _StoryListControllerBase with _$StoryListController;

abstract class _StoryListControllerBase with Store {
  final List<StoryListItem> storyListItems = [
    StoryListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/s960x960/35362299_1778569952198755_4120467782695387136_o.jpg?_nc_cat=111&_nc_sid=7aed08&_nc_ohc=099e0g1jnGgAX9RG1fL&_nc_ht=scontent.fssa7-1.fna&_nc_tp=7&oh=6be3aae5cdcead4cfdec9c4318e56a1b&oe=5F09BCE0",
      personName: "Laurinne",
      date: "15:00",
    ),
    StoryListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t31.0-8/s960x960/14067822_1093847150671042_5073446049279310352_o.jpg?_nc_cat=103&_nc_sid=7aed08&_nc_ohc=GddwKZkWHwkAX-IZRCe&_nc_ht=scontent.fssa7-1.fna&_nc_tp=7&oh=ee95cfa3560929b2e81c6131e99b547e&oe=5F07CF7A",
      personName: "Lau",
      date: "15:00",
    ),
    StoryListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t31.0-8/p720x720/1898863_629202940468801_580628259_o.jpg?_nc_cat=103&_nc_sid=7aed08&_nc_ohc=G2EFtDPDkhgAX8ZOUgg&_nc_ht=scontent.fssa7-1.fna&_nc_tp=6&oh=bb54a2f23124d3dc048168357f5d554c&oe=5F07B7BA",
      personName: "Oliver",
      date: "15:00",
    ),
  ];
}
