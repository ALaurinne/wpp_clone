import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:whatsapp_clone/app/shared/services/auth/auth_service.dart';
import 'package:whatsapp_clone/app/shared/services/chats/chats_service.dart';
import 'package:whatsapp_clone/app/modules/home/pages/chats/models/chats_model_item.dart';
part 'chats_controller.g.dart';

class ChatsController = _ChatsControllerBase with _$ChatsController;

abstract class _ChatsControllerBase with Store {
  final AuthService authService;
  final ChatsService chatsService;
  // Retorno de uma stream.listen
  StreamSubscription subscription;

  // Lista Observavel de Conversas
  @observable
  ObservableList<ChatModelItem> chatListItems =
      <ChatModelItem>[].asObservable();

  @observable
  String filter;

  _ChatsControllerBase({this.chatsService, this.authService}) {
    getChatList();
  }

  getChatList() async {
    final user = await authService.getUser();
    subscription = chatsService.getChatListById(user.uid).listen((event) {
      chatListItems = event;
    });
  }

  @computed
  List<ChatModelItem> get listFilter {
    return chatListItems
        .where((item) => item.nome.toLowerCase().contains(filter.toLowerCase()))
        .toList()
        .asObservable();
  }

  //
  setFilter(String value) => filter = value;

  // Encaminha para as mensagens da pessoa
  @action
  accessChat(ChatModelItem person) =>
      Modular.to.pushNamed('/home/screen', arguments: person);

  void cancelSubscription() {
    subscription.cancel();
  }
}

// // Lista filtrada pelo filtro com a lista observavel
// @action
// List<ChatModelItem> get listFilter {
//   return chatListItems
//       .where((item) => item.nome.toLowerCase().contains(filter.toLowerCase()))
//       .toList()
//       .asObservable();
// }

// Adicionando um novo chat a lista
// @action
// newChat() {
//   chatListItems.add(ChatListItem(
//     profileUrl:
//         "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/82614383_2716249885097419_3396061057905590272_n.jpg?_nc_cat=110&_nc_sid=7aed08&_nc_eui2=AeGIPVwBTx8-SIRV6ZJ1c00x8gZmpI4-y1vyBmakjj7LW6g7w1K3-CpGT2MaBonNisc6kBDAdJ_eUtC4JZlbc1Od&_nc_ohc=LxOycVzQTd0AX8XcQd4&_nc_ht=scontent.fssa7-1.fna&oh=5cb8b4f1c177c940d327ec8551280bbe&oe=5F306E34",
//     personName: "Laurinn Oliveri",
//     lastMessage: "WILL WORK",
//     date: "16:00",
//     notRead: true,
//   ));
// }

// Alterando dado no chat
// @action
// changeMessage() {
//   chatListItems.elementAt(0).lastMessage = "Nova mensagem";
//   chatListItems.elementAt(0).notRead = true;
// }
