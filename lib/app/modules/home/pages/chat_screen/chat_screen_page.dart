import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:whatsapp_clone/app/shared/constants/appcolors.dart';
import 'package:whatsapp_clone/app/modules/home/models/chat_list_item_models.dart';
import 'package:whatsapp_clone/app/shared/constants/text_styles.dart';
import 'chat_screen_controller.dart';
import 'models/chat_message_models.dart';

class ChatScreenPage extends StatefulWidget {
  final ChatListItem person;

  const ChatScreenPage({Key key, this.person}) : super(key: key);

  @override
  _ChatScreenPageState createState() => _ChatScreenPageState();
}

class _ChatScreenPageState
    extends ModularState<ChatScreenPage, ChatScreenController> {
  //use 'controller' variable to access controller
  final textFieldController = TextEditingController();

  // Coluna das mensagens
  Widget renderChatMessage(ChatMessage message) {
    return Column(
      children: <Widget>[
        Align(
          alignment:
              message.isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            margin: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: message.isSentByMe ? Color(0xFFDCF8C6) : Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  color: Color(0x220000000),
                  offset: Offset(1, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              message.message,
              style: TextStyles.CHAT_MESSAGE_LABEL,
            ),
          ),
        ),
      ],
    );
  }

  // Barra inferior
  Widget renderTextBox() {
    return Observer(
      builder: (_) {
        return Container(
          margin: EdgeInsets.only(
            bottom: 20,
            left: 10,
            right: 10,
          ),
          child: Row(
            children: <Widget>[
              Flexible(
                child: Container(
                  color: Colors.white,
                  child: TextField(
                    controller: textFieldController,
                    decoration: InputDecoration(
                      hintText: "Digite uma mensagem",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                      prefixIcon: IconButton(
                        icon: Icon(
                          Icons.tag_faces,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    onChanged: (_) {
                      controller.changeTyping(true);
                    },
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.PRIMARY_COLOR, shape: BoxShape.circle),
                child: IconButton(
                  icon: Icon(
                    controller.isTyping ? Icons.send : Icons.mic,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    controller.sendMessage(textFieldController.text);
                    textFieldController.clear();
                    controller.changeTyping(false);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // Corpo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.CHAT_BACKGROUND_COLOR,
      appBar: AppBar(
        leading: ChatLeading(profileUrl: widget.person.profileUrl),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              widget.person.personName,
            ),
            Padding(padding: EdgeInsets.all(1)),
            Text(
              "online",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.attach_file),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Observer(
        builder: (_) {
          return Column(
            children: <Widget>[
              Flexible(
                child: ListView.builder(
                  itemCount: controller.messages.length,
                  itemBuilder: (ctx, i) =>
                      renderChatMessage(controller.messages[i]),
                ),
              ),
              Divider(),
              Container(
                child: renderTextBox(),
              ),
            ],
          );
        },
      ),
    );
  }
}

//Leading do Cabeçalho
class ChatLeading extends StatelessWidget {
  const ChatLeading({
    Key key,
    @required this.profileUrl,
  }) : super(key: key);

  final String profileUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // limita a área
      padding: const EdgeInsets.only(top: 8, left: 2, bottom: 8),
      child: InkWell(
        // poder criar um botão de algo que não era para ser um botão
        borderRadius: BorderRadius.all(Radius.circular(100)),
        // deixando as bordas circulares
        child: Row(
          // uma linha com conteudo
          children: <Widget>[
            Icon(
              Icons.arrow_back,
              size: 20,
            ),
            Container(
              width: 30,
              height: 30,
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(profileUrl),
              ),
            ),
          ],
        ),
        onTap: () => Modular.to.pop(context),
      ),
    );
  }
}
