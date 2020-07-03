import 'package:mobx/mobx.dart';
import 'package:whatsapp_clone/app/modules/home/models/chat_list_item_models.dart';
part 'chats_controller.g.dart';

class ChatsController = _ChatsControllerBase with _$ChatsController;

abstract class _ChatsControllerBase with Store {
  // Pesquisa anterior
  // buildSearchList(searchText) {
  //   bool contains(ChatListItem i) =>
  //       i.personName.toLowerCase().contains(searchText.toLowerCase());

  //   return searchText.isEmpty ? chatListItems
  //       : chatListItems.where(contains).toList();
  // }

  // Criando o filtro
  // final filter = BehaviorSubject<String>.seeded('');

  // Criando a lista inicial
  // final chatListItems = BehaviorSubject<List<ChatListItem>>.seeded();

  // Criando a lista que irá ser mostrada
  // @observable
  // ObservableStream<List<ChatListItem>> output;

  // Fazendo a busca com RX
  // _ChatsControllerBase() {
  //   output = Rx.combineLatest2<List<ChatListItem>, String, List<ChatListItem>>(
  //     chatListItems.stream,
  //     filter.stream,
  //     (list, filter) {
  //       return filter.isEmpty
  //           ? list
  //           : list
  //               .where((item) => item.personName
  //                   .toLowerCase()
  //                   .contains(filter.toLowerCase()))
  //               .toList();
  //     },
  //   ).asObservable(initialValue: []);
  // }

  // @observable
  // String filter = '';

  @observable
  ObservableList<ChatListItem> chatListItems = [
    ChatListItem(
        profileUrl:
            "https://media-exp1.licdn.com/dms/image/C4D03AQGiVrw4tHuwZQ/profile-displayphoto-shrink_400_400/0?e=1597276800&v=beta&t=pnlHgBNnmwOAnYUxSq6UGCakbWfEev2SU8rXc6b58wY",
        personName: "Laurinne Oliveira",
        lastMessage: "Vai dar certo",
        date: "15:00",
        notRead: true),
    ChatListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/82614383_2716249885097419_3396061057905590272_n.jpg?_nc_cat=110&_nc_sid=7aed08&_nc_ohc=vnnyB8GH9QAAX_PcP8I&_nc_ht=scontent.fssa7-1.fna&oh=167bc2a94c8f7809c3b2fe9980ea56aa&oe=5F08E134",
      personName: "Lauri",
      lastMessage: "Vai dar certo",
      date: "15:00",
      notRead: false,
    ),
    ChatListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/74694856_2589973127725096_4652126099046662144_n.jpg?_nc_cat=103&_nc_sid=7aed08&_nc_ohc=1Hm9jcKHzk0AX8XglSF&_nc_ht=scontent.fssa7-1.fna&oh=c40ffbe752b9e306a85cba7466125b9c&oe=5F0B62B6",
      personName: "Oliveira",
      lastMessage: "Vai dar certo",
      date: "15:00",
      notRead: true,
    ),
    ChatListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/s960x960/35362299_1778569952198755_4120467782695387136_o.jpg?_nc_cat=111&_nc_sid=7aed08&_nc_ohc=099e0g1jnGgAX9RG1fL&_nc_ht=scontent.fssa7-1.fna&_nc_tp=7&oh=6be3aae5cdcead4cfdec9c4318e56a1b&oe=5F09BCE0",
      personName: "Laurinne",
      lastMessage: "Vai dar certo",
      date: "15:00",
      notRead: false,
    ),
    ChatListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t31.0-8/s960x960/15384461_1197935906928832_2098159937534331287_o.jpg?_nc_cat=102&_nc_sid=7aed08&_nc_ohc=OOCO7w6GbKgAX9JYYYk&_nc_ht=scontent.fssa7-1.fna&_nc_tp=7&oh=af9481ae99d4acad9293b57d915ebaa2&oe=5F099127",
      personName: "Olivinha",
      lastMessage: "Vai dar certo",
      date: "15:00",
      notRead: false,
    ),
    ChatListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/14720400_1161740840548339_5316267703845738995_n.jpg?_nc_cat=107&_nc_sid=7aed08&_nc_ohc=Lm0vxwxYXuYAX-yJD9q&_nc_ht=scontent.fssa7-1.fna&oh=e215fcd5c3a370b8f40cbc0b2bb2cc13&oe=5F087327",
      personName: "Laura",
      lastMessage: "Vai dar certo",
      date: "15:00",
      notRead: false,
    ),
    ChatListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t31.0-8/s960x960/14067822_1093847150671042_5073446049279310352_o.jpg?_nc_cat=103&_nc_sid=7aed08&_nc_ohc=GddwKZkWHwkAX-IZRCe&_nc_ht=scontent.fssa7-1.fna&_nc_tp=7&oh=ee95cfa3560929b2e81c6131e99b547e&oe=5F07CF7A",
      personName: "Lau",
      lastMessage: "Vai dar certo",
      date: "15:00",
      notRead: false,
    ),
    ChatListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t31.0-8/p720x720/1898863_629202940468801_580628259_o.jpg?_nc_cat=103&_nc_sid=7aed08&_nc_ohc=G2EFtDPDkhgAX8ZOUgg&_nc_ht=scontent.fssa7-1.fna&_nc_tp=6&oh=bb54a2f23124d3dc048168357f5d554c&oe=5F07B7BA",
      personName: "Oliver",
      lastMessage: "Vai dar certo",
      date: "15:00",
      notRead: false,
    ),
    ChatListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/1390664_574299812625781_1675278015_n.jpg?_nc_cat=106&_nc_sid=7aed08&_nc_ohc=Ov48Gn-WxyQAX8SNOfu&_nc_ht=scontent.fssa7-1.fna&oh=102d48ec806604a84894c16ff43594b5&oe=5F0A2BB2",
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
    print("filtragem");
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
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/82614383_2716249885097419_3396061057905590272_n.jpg?_nc_cat=110&_nc_sid=7aed08&_nc_ohc=vnnyB8GH9QAAX_PcP8I&_nc_ht=scontent.fssa7-1.fna&oh=167bc2a94c8f7809c3b2fe9980ea56aa&oe=5F08E134",
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
  }

  // Alterando Filtro
  @action
  setFilter(String value) {
    return filter = value;
  }
}
