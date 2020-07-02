import 'package:mobx/mobx.dart';

import 'models/chat_message_models.dart';

part 'chat_screen_controller.g.dart';

class ChatScreenController = _ChatScreenControllerBase
    with _$ChatScreenController;

abstract class _ChatScreenControllerBase with Store {
  @observable
  bool isTyping = false;

  @action
  changeTyping(bool value) => isTyping = value;

  @observable
  ObservableList<ChatMessage> messages = [
    ChatMessage(isSentByMe: false, message: "Oláaa"),
    ChatMessage(isSentByMe: true, message: "Oi oi"),
    ChatMessage(isSentByMe: false, message: "Como cê tá?"),
    ChatMessage(isSentByMe: true, message: "Vivendo ou sobrevivendo"),
    ChatMessage(isSentByMe: true, message: "e vc?"),
    ChatMessage(isSentByMe: false, message: "to beeem"),
    ChatMessage(isSentByMe: false, message: "Oláaa"),
    ChatMessage(isSentByMe: true, message: "Oi oi"),
    ChatMessage(isSentByMe: false, message: "Como cê tá?"),
    ChatMessage(isSentByMe: true, message: "Vivendo ou sobrevivendo"),
    ChatMessage(isSentByMe: true, message: "e vc?"),
    ChatMessage(isSentByMe: false, message: "to beeem"),
    ChatMessage(isSentByMe: false, message: "Oláaa"),
    ChatMessage(isSentByMe: true, message: "Oi oi"),
    ChatMessage(isSentByMe: false, message: "Como cê tá?"),
    ChatMessage(isSentByMe: true, message: "Vivendo ou sobrevivendo"),
    ChatMessage(isSentByMe: true, message: "e vc?"),
    ChatMessage(isSentByMe: false, message: "Vai dar certo"),
  ].asObservable();

  @action
  sendMessage(String message) {
    messages.add(ChatMessage(message: message));
  }
}
