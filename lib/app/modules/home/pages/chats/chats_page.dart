import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:whatsapp_clone/app/modules/home/pages/chats/models/chats_model_item.dart';
import 'package:whatsapp_clone/app/shared/constants/appcolors.dart';
import 'package:whatsapp_clone/app/shared/constants/text_styles.dart';
import 'chats_controller.dart';

class ChatsPage extends StatefulWidget {
  final String text;
  const ChatsPage({Key key, this.text}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends ModularState<ChatsPage, ChatsController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    super.initState();
    // controller.setListFilter(widget.text);
  }

  // Corpo
  @override
  Widget build(BuildContext context) {
    // Alterando filtro
    controller.setFilter(widget.text);

    return Scaffold(
      body: Observer(
        builder: (_) {
          return ChatsListView(
            list: controller.listFilter,
            accessChat: controller.accessChat,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // controller.newChat();
          // controller.changeMessage();
        },
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
        backgroundColor: AppColors.PRIMARY_COLOR,
      ),
    );
  }
}

// Lista de conversas
class ChatsListView extends StatelessWidget {
  const ChatsListView({Key key, this.list, this.accessChat}) : super(key: key);

  final List<ChatModelItem> list;
  final Function accessChat;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: list.length,
      itemBuilder: (ctx, i) {
        return ListTile(
          title: Text(list[i].nome),
          subtitle: Text(list[i].ultimaMensagem.texto),
          trailing: Column(
            children: <Widget>[
              Text(
                list[i].ultimaMensagem.horario.toString(),
                style: list[i].mensagensNaoLidas != 0
                    ? TextStyles.LIST_NOT_READ
                    : TextStyles.LIST_READ,
              ),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Container(
                width: list[i].mensagensNaoLidas != 0 ? 30 : 0, // gambiarra
                height:
                    list[i].mensagensNaoLidas != 0 ? 30 : 0, // mais gambiarra
                decoration: BoxDecoration(
                  color: AppColors.SECONDARY_COLOR,
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: Center(
                  child: Text(
                    list[i].mensagensNaoLidas.toString(),
                    style: TextStyles.NUMBER_NOT_READ,
                  ),
                ),
              ),
            ],
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(list[i].imagem),
          ),
          onTap: () => accessChat(list[i]),
        );
      },
      separatorBuilder: (ctx, i) => Divider(),
    );
  }
}
