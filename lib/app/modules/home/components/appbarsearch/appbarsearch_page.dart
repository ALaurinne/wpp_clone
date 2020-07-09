import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/shared/constants/appcolors.dart';

// APP BAR QUANDO COMEÇA A BUSCA
class AppBarSearch extends StatefulWidget {
  final Function searchChat;
  final Function(String) onSearchChange;
  final Function onClear;

  // Utilizando as chaves no construtor, utiliza-se parametros nomeados. ( comum para StatefulWidget )
  const AppBarSearch(
      {Key key, @required this.searchChat, this.onSearchChange, this.onClear})
      : super(key: key);

  @override
  _AppBarSearchState createState() => _AppBarSearchState();
}

class _AppBarSearchState extends State<AppBarSearch> {
  final textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textFieldController,
      decoration: InputDecoration(
        hintText: "Pesquisar...",
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        prefixIcon: IconButton(
          icon: Icon(Icons.arrow_back),
          color: AppColors.primaryColor,
          onPressed: widget.searchChat,
        ),
        suffixIcon: IconButton(
          icon: Icon(Icons.clear),
          color: Colors.grey,
          onPressed: () {
            widget.onClear();
            textFieldController.clear();
          },
        ),
        fillColor: Colors.white,
        filled: true,
      ),
      onChanged: widget.onSearchChange,
    );
  }
}
