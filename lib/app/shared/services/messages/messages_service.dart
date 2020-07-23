import 'package:dio/dio.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:mobx/mobx.dart';
import 'package:whatsapp_clone/app/modules/home/pages/chat_screen/models/chat_message_model.dart';
import 'package:whatsapp_clone/app/shared/services/auth/auth_service.dart';

class MessageService {
  // FirebaseDatabase database = FirebaseDatabase.instance;
  // DatabaseReference myRef = database.reference();

// myRef.setValue("Hello, World!");
//
  final dio = Dio(BaseOptions(
    baseUrl: "https://estagio-clima.firebaseio.com/conversas_chat/conversa_2",
  ));

  AuthService authService;
  DatabaseReference database = FirebaseDatabase.instance.reference();

  MessageService(AuthService authService);

  Stream<ObservableList<MessageModel>> getMessageListById() {
    return database.child('conversas_chat/conversa_2/').onValue.map((event) {
      Map<dynamic, dynamic> result = event.snapshot.value;
      return result.entries.map(_jsonToMessageModel).toList().asObservable();
    });
  }

  MessageModel _jsonToMessageModel(MapEntry<dynamic, dynamic> json) {
    return MessageModel.fromJson(json.value..['message_id'] = json.key);
  }

  sendMessage(MessageModel message) async {
    final bearerToken = authService.bearerToken;
    final headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer $bearerToken",
    };
    final options = Options(
      headers: headers,
    );
    await dio.post(
      "/${message.messageId}",
      data: message.toJson(),
      options: options,
    );
  }
}
