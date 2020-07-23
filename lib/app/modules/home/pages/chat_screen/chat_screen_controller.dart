import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:whatsapp_clone/app/shared/services/auth/auth_service.dart';
import 'package:whatsapp_clone/app/shared/services/messages/messages_service.dart';

import 'models/chat_message_model.dart';

part 'chat_screen_controller.g.dart';

class ChatScreenController = _ChatScreenControllerBase
    with _$ChatScreenController;

abstract class _ChatScreenControllerBase with Store {
  final AuthService authService;
  final MessageService messageService;
  // Retorno de uma stream.listen
  StreamSubscription subscription;
  FirebaseUser user;

  @observable
  ObservableList<MessageModel> messagesList = <MessageModel>[].asObservable();

  _ChatScreenControllerBase({this.messageService, this.authService}) {
    getMessageList();
    setUser();
  }

  @observable
  MessageModel message = MessageModel();

  @action
  setMessage(String text) {
    message.messageId = user.uid.substring(0, 5) +
        DateTime.now().millisecondsSinceEpoch.toString();
    message.horario = DateTime.now().millisecondsSinceEpoch;
    message.remetente = user.uid;
    message.status = 0;
    message.texto = text;
  }

  getMessageList() {
    subscription = messageService.getMessageListById().listen((event) {
      messagesList = event;
    });
  }

  setUser() async {
    user = await authService.getUser();
  }

  @observable
  bool isTyping = false;

  // Altera o valor de "Está Digitando"
  @action
  changeTyping(bool value) => isTyping = value;

  // Adiciona a mensagem enviada a lista
  @action
  Future sendMessage() async {
    try {
      await messageService.sendMessage(message);
    } catch (e) {
      print(e.toString());
    }
  }

  void cancelSubscription() {
    subscription.cancel();
  }
}
