import 'package:whatsapp_clone/app/modules/home/components/appbarsearch/appbarsearch_controller.dart';
import 'package:whatsapp_clone/app/modules/home/components/appbartitle/appbartitle_controller.dart';
import 'package:whatsapp_clone/app/modules/home/pages/chat_screen/chat_screen_controller.dart';
import 'package:whatsapp_clone/app/modules/home/pages/chat_screen/chat_screen_page.dart';
import 'package:whatsapp_clone/app/modules/home/pages/chats/chats_controller.dart';
import 'package:whatsapp_clone/app/modules/home/pages/story/story_list_controller.dart';
import 'package:whatsapp_clone/app/modules/home/pages/story_view/story_view_page.dart';
import 'pages/camera/camera_controller.dart';
import 'pages/calls/calls_controller.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:story_view/story_view.dart';
import 'package:dio/dio.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => StoryListController()),
        Bind((i) => ChatsController()),
        Bind((i) => ChatScreenController()),
        Bind((i) => StoryController()),
        Bind((i) => CameraController()),
        Bind((i) => CallsController()),
        Bind((i) => AppbartitleController()),
        Bind((i) => AppbarsearchController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router('/screen',
            child: (_, args) => ChatScreenPage(
                  person: args.data,
                )),
        Router('/story', child: (_, args) => StoryViewPage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
