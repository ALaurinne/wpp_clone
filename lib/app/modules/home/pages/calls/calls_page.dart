import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:whatsapp_clone/app/shared/constants/appcolors.dart';
import 'calls_controller.dart';

class CallsPage extends StatefulWidget {
  final String title;
  const CallsPage({Key key, this.title = "Calls"}) : super(key: key);

  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends ModularState<CallsPage, CallsController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: controller.callListItem.length,
      itemBuilder: (ctx, i) {
        return ListTile(
          title: Text(controller.callListItem[i].personName),
          subtitle: Text(controller.callListItem[i].date),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              controller.callListItem[i].isCall ? Icons.call : Icons.videocam,
              color: AppColors.PRIMARY_COLOR,
            ),
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(
              controller.callListItem[i].profileUrl,
            ),
          ),
          onTap: () {},
        );
      },
      separatorBuilder: (ctx, i) {
        return Divider();
      },
    );
  }
}
