import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:whatsapp_clone/app/app_module.dart';
import 'package:whatsapp_clone/app/modules/home/home_module.dart';
import 'package:whatsapp_clone/app/modules/home/pages/chat_screen/chat_screen_controller.dart';
import 'package:whatsapp_clone/app/modules/home/pages/chats/chats_page.dart';

void main() {
  // initModule(AppModule());
  initModule(HomeModule());

  final ChatScreenController chatMessage = Modular.get();

  test('Deve enviar uma mensagem', () {
    //setup
    chatMessage.sendMessage('atirei o pau no gato');
    //run
    var result = chatMessage.messagesList.last.texto;
    //verify
    expect(result, 'atirei o pau no gato');
  });
}
