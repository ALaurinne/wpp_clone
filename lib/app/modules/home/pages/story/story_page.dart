import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'story_list_controller.dart';

class StoryPage extends StatefulWidget {
  final String title;
  const StoryPage({Key key, this.title = "StoryView"}) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends ModularState<StoryPage, StoryListController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: controller.storyListItems.length,
      itemBuilder: (ctx, i) {
        return ListTile(
          title: Text(controller.storyListItems[i].personName),
          subtitle: Text(controller.storyListItems[i].date),
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(
              controller.storyListItems[i].profileUrl,
            ),
          ),
          onTap: () {
            Modular.to.pushNamed('/story');
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => StoryViewScreen(),
            //   ),
            // );
          },
        );
      },
      separatorBuilder: (ctx, i) {
        return Divider(
          height: 1,
          indent: 15,
          endIndent: 15,
        );
      },
    );
  }
}
