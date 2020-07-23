import 'package:firebase_database/firebase_database.dart';
import 'package:mobx/mobx.dart';
import 'package:whatsapp_clone/app/modules/home/pages/chats/models/chats_model_item.dart';

class ChatsService {
  // FirebaseDatabase database = FirebaseDatabase.instance;
  // DatabaseReference myRef = database.reference();

// myRef.setValue("Hello, World!");
//
  DatabaseReference database = FirebaseDatabase.instance.reference();

  Stream<ObservableList<ChatModelItem>> getChatListById(String id) {
    return database.child('usuarios_conversas_chat/$id').onValue.map((event) {
      Map<dynamic, dynamic> result = event.snapshot.value;
      return result.entries.map(_jsonToChatModel).toList().asObservable();
    });
  }

  ChatModelItem _jsonToChatModel(MapEntry<dynamic, dynamic> json) {
    return ChatModelItem.fromJson(json.value..['remetente_id'] = json.key);
  }
}
