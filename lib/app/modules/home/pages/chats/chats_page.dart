import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:whatsapp_clone/app/config/config.dart';
import 'package:whatsapp_clone/app/modules/home/models/chat_list_item_models.dart';
import 'chats_controller.dart';

class ChatsPage extends StatefulWidget {
  final String text;
  const ChatsPage({Key key, this.text}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends ModularState<ChatsPage, ChatsController> {
  //use 'controller' variable to access controller

  // Corpo
  @override
  Widget build(BuildContext context) {
    // Alterando filtro
    controller.setFilter(widget.text);

    return Scaffold(
      body: ChatsListView(
        list: controller.listFiltered,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.newChat();
          controller.changeMessage();
        },
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
        backgroundColor: primaryColor,
      ),
    );
  }
}

// Lista de conversas
class ChatsListView extends StatelessWidget {
  const ChatsListView({Key key, this.list}) : super(key: key);

  final List<ChatListItem> list;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListView.separated(
          itemCount: list.length,
          itemBuilder: (ctx, i) {
            return ListTile(
              title: Text(list[i].personName),
              subtitle: Text(list[i].lastMessage),
              trailing: Column(
                children: <Widget>[
                  Text(
                    list[i].date,
                    style: list[i].notRead
                        ? TextStyle(
                            color: secondaryColor, fontWeight: FontWeight.bold)
                        : TextStyle(color: Colors.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Container(
                    width: list[i].notRead ? 30 : 0, // gambiarra
                    height: list[i].notRead ? 30 : 0, // mais gambiarra
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                  list[i].profileUrl,
                ),
              ),
              onTap: () {
                //todo change to modular
                Modular.to.pushNamed('/screen', arguments: list[i]);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => ChatScreen(person: list[i]),
                //   ),
                // );
              },
            );
          },
          separatorBuilder: (ctx, i) {
            return Divider();
          },
        );
      },
    );
  }
}
