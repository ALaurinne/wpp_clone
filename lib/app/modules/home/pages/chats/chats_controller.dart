import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:whatsapp_clone/app/modules/home/models/chat_list_item_models.dart';
part 'chats_controller.g.dart';

class ChatsController = _ChatsControllerBase with _$ChatsController;

abstract class _ChatsControllerBase with Store {
  @observable
  ObservableList<ChatListItem> chatListItems = [
    ChatListItem(
      profileUrl:
          "https://media-exp1.licdn.com/dms/image/C4D03AQGiVrw4tHuwZQ/profile-displayphoto-shrink_400_400/0?e=1597276800&v=beta&t=pnlHgBNnmwOAnYUxSq6UGCakbWfEev2SU8rXc6b58wY",
      personName: "Laurinne Oliveira",
      lastMessage: "Vai dar certo",
      date: "15:00",
      notRead: false,
    ),
    ChatListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/82614383_2716249885097419_3396061057905590272_n.jpg?_nc_cat=110&_nc_sid=7aed08&_nc_eui2=AeGIPVwBTx8-SIRV6ZJ1c00x8gZmpI4-y1vyBmakjj7LW6g7w1K3-CpGT2MaBonNisc6kBDAdJ_eUtC4JZlbc1Od&_nc_ohc=LxOycVzQTd0AX8XcQd4&_nc_ht=scontent.fssa7-1.fna&oh=5cb8b4f1c177c940d327ec8551280bbe&oe=5F306E34",
      personName: "Lauri",
      lastMessage: "Vai dar certo",
      date: "15:00",
      notRead: false,
    ),
    ChatListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/74694856_2589973127725096_4652126099046662144_n.jpg?_nc_cat=103&_nc_sid=7aed08&_nc_eui2=AeHjI6lHnd5fCPLBcWQeLd1wxR22ntMb6SbFHbae0xvpJkoJxC5dMrF6S98lvate7jPtwUnnrJHkpi-JF-RPmSm_&_nc_ohc=M8ppFLfxGZUAX93GAHt&_nc_ht=scontent.fssa7-1.fna&oh=104f4c220c1da1843813a7dc474b1973&oe=5F32EFB6",
      personName: "Oliveira",
      lastMessage: "Vai dar certo",
      date: "15:00",
      notRead: true,
    ),
    ChatListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/s960x960/35362299_1778569952198755_4120467782695387136_o.jpg?_nc_cat=111&_nc_sid=7aed08&_nc_eui2=AeG48n9OQnn5uVvbrEgFV9JzOzVzMPUty7A7NXMw9S3LsN3OQMG-FRq-yxwoHrRl_Idgc6nPde-czYme4FL7R91v&_nc_ohc=ClIYjvV35cYAX9uUwWy&_nc_ht=scontent.fssa7-1.fna&_nc_tp=7&oh=e03d98f72d10b025b3f2f96a4292a2d7&oe=5F3149E0",
      personName: "Laurinne",
      lastMessage: "Vai dar certo",
      date: "15:00",
      notRead: true,
    ),
    ChatListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t31.0-8/s960x960/15384461_1197935906928832_2098159937534331287_o.jpg?_nc_cat=102&_nc_sid=7aed08&_nc_eui2=AeGnonVApCKvFQhXuMR0OPY9ZBDVkmSuWbFkENWSZK5Zse8-cE3o2UkuOLjliOjm2-NEYDeCw_hJNYnObdGk0GfY&_nc_ohc=-lZim0klGnYAX98Ekdx&_nc_ht=scontent.fssa7-1.fna&_nc_tp=7&oh=37e13f50389ba046caac135c55a25e89&oe=5F311E27",
      personName: "Olivinha",
      lastMessage: "Vai dar certo",
      date: "15:00",
      notRead: false,
    ),
    ChatListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/13407300_1052998574755900_6925955509540267344_n.jpg?_nc_cat=101&_nc_sid=7aed08&_nc_eui2=AeGFb9KRMt3c7cZIzvyV0JyUhD4pWZhOqpSEPilZmE6qlBzBt_F0EMu2_ThU_BgTa6zR_vc6DPD8886aWhgT55nI&_nc_ohc=TCUhFDPimEAAX8oRzYT&_nc_ht=scontent.fssa7-1.fna&oh=bfa839ad981376c96cbd4f4404d2a01f&oe=5F30E4B1",
      personName: "Laura",
      lastMessage: "Vai dar certo",
      date: "15:00",
      notRead: false,
    ),
    ChatListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/p720x720/54045011_2152701298118950_931317830836551680_o.jpg?_nc_cat=102&_nc_sid=7aed08&_nc_eui2=AeFulTCTq0b4MWDmEkFtDSphKJ8ZKQSVJ3YonxkpBJUndmGJyTa1_001baGw_O-KyG6cNpxAilClB4qjg4w3IIhF&_nc_ohc=ZQN9zlZKy2kAX9tXRhl&_nc_ht=scontent.fssa7-1.fna&_nc_tp=6&oh=c53fc998c19e3d94f28ef28bd80278a3&oe=5F315FBF",
      personName: "Lau",
      lastMessage: "Vai dar certo",
      date: "15:00",
      notRead: false,
    ),
    ChatListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/14963241_1171480026241087_4840890025711582051_n.jpg?_nc_cat=111&_nc_sid=7aed08&_nc_eui2=AeEDr8jDBFF_fuWjXW0119Mn4f4vHgs8Khvh_i8eCzwqG0gAfxQqYlMWG2lBa6SjsupI2syogJ21lto1i-jn3VpS&_nc_ohc=-in1HQGWJHQAX_QAHCB&_nc_ht=scontent.fssa7-1.fna&oh=001e99af23b50ced045e2ca7ab7f577b&oe=5F338438",
      personName: "Oliver",
      lastMessage: "Vai dar certo",
      date: "15:00",
      notRead: false,
    ),
    ChatListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t31.0-8/s960x960/14067822_1093847150671042_5073446049279310352_o.jpg?_nc_cat=103&_nc_sid=7aed08&_nc_eui2=AeHEu021D8BxMURqnklE2s0gbepLGNCf97lt6ksY0J_3uaoC6CObUE0gTIlFBVOys4xKfJMje92Pd46jDLsV5eQB&_nc_ohc=vaLGaxJejB0AX8kWMze&_nc_ht=scontent.fssa7-1.fna&_nc_tp=7&oh=786acda989fe81ea43acadec0850d15f&oe=5F3350FA",
      personName: "Laau Oliveira",
      lastMessage: "Vai dar certo",
      date: "15:00",
      notRead: true,
    ),
  ].asObservable();

  @observable
  String filter = '';

  @computed
  List<ChatListItem> get listFiltered {
    return filter.isEmpty
        ? chatListItems
        : chatListItems
            .where((item) =>
                item.personName.toLowerCase().contains(filter.toLowerCase()))
            .toList()
            .asObservable();
  }

  // Adicionando um novo chat a lista
  @action
  newChat() {
    chatListItems.add(ChatListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/82614383_2716249885097419_3396061057905590272_n.jpg?_nc_cat=110&_nc_sid=7aed08&_nc_eui2=AeGIPVwBTx8-SIRV6ZJ1c00x8gZmpI4-y1vyBmakjj7LW6g7w1K3-CpGT2MaBonNisc6kBDAdJ_eUtC4JZlbc1Od&_nc_ohc=LxOycVzQTd0AX8XcQd4&_nc_ht=scontent.fssa7-1.fna&oh=5cb8b4f1c177c940d327ec8551280bbe&oe=5F306E34",
      personName: "Laurinn Oliveri",
      lastMessage: "WILL WORK",
      date: "16:00",
      notRead: true,
    ));
  }

  // Alterando dado no chat
  @action
  changeMessage() {
    chatListItems.elementAt(0).lastMessage = "Nova mensagem";
    chatListItems.elementAt(0).notRead = true;
  }

  // Alterando Filtro
  @action
  setFilter(String value) {
    return filter = value;
  }

  @action
  accessChat(ChatListItem person) =>
      Modular.to.pushNamed('/home/screen', arguments: person);
}
