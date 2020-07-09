import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:story_view/story_view.dart';

class StoryViewPage extends StatefulWidget {
  const StoryViewPage({Key key}) : super(key: key);

  @override
  _StoryViewPageState createState() => _StoryViewPageState();
}

class _StoryViewPageState extends ModularState<StoryViewPage, StoryController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    List<StoryItem> stories = [
      StoryItem.text("First Status", Colors.black),
      StoryItem.pageImage(
        NetworkImage(
            "https://media-exp1.licdn.com/dms/image/C4D03AQGiVrw4tHuwZQ/profile-displayphoto-shrink_400_400/0?e=1597276800&v=beta&t=pnlHgBNnmwOAnYUxSq6UGCakbWfEev2SU8rXc6b58wY"),
      ),
    ];

    return Material(
      child: StoryView(
        stories,
        controller: controller,
        onComplete: () => Modular.to.pop(context),
      ),
    );
  }
}
