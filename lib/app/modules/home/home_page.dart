import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:whatsapp_clone/app/config/config.dart';
import 'package:whatsapp_clone/app/modules/home/components/appbarsearch/appbarsearch_page.dart';
import 'package:whatsapp_clone/app/modules/home/components/appbartitle/appbartitle_page.dart';
import 'package:whatsapp_clone/app/modules/home/pages/chats/chats_page.dart';
import 'package:whatsapp_clone/app/modules/home/pages/story/story_page.dart';
import 'home_controller.dart';
import 'pages/calls/calls_page.dart';
import 'pages/camera/camera_page.dart';

class HomePage extends StatefulWidget {
  final String title;
  final FirebaseUser user;
  const HomePage({Key key, this.title = "Home", this.user}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  // final controller = HomeController();
  String text;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Observer(
        builder: (_) {
          return Scaffold(
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: ListView(
                      padding: EdgeInsets.all(5),
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          // backgroundImage:
                          //     NetworkImage('${widget.user.photoUrl}'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                        ),
                        Text(
                          'Olá ${widget.user.displayName}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                        ),
                        Text(
                          '${widget.user.phoneNumber}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                        ),
                        Text(
                          '${widget.user.email}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: primaryColor,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Logout',
                      // textAlign: TextAlign.center,
                    ),
                    onTap: controller.logout,
                  ),
                ],
              ),
            ),
            appBar: AppBar(
              title: controller.isSearching
                  ? AppBarSearch(
                      searchChat: controller.searchChat,
                      onSearchChange: controller.setTextSearch,
                      onClear: () {
                        controller.setTextSearch('');
                      },
                    )
                  : AppBarTitle(),
              backgroundColor: primaryColor,
              bottom: controller.isSearching
                  ? null
                  : TabBar(
                      indicatorColor: Colors.white,
                      tabs: <Widget>[
                        Tab(
                          icon: Icon(Icons.camera_alt),
                        ),
                        Tab(
                          child: Text("CONVERSAS"),
                        ),
                        Tab(
                          child: Text("STATUS"),
                        ),
                        Tab(
                          child: Text("CHAMADAS"),
                        ),
                      ],
                    ),
              actions: !controller.isSearching
                  ? <Widget>[
                      IconButton(
                        onPressed: controller.searchChat,
                        icon: Icon(Icons.search),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_vert),
                      ),
                    ]
                  : null,
            ),
            body: TabBarView(
              children: <Widget>[
                CameraPage(),
                ChatsPage(text: controller.textSearch),
                StoryPage(),
                CallsPage(),
              ],
            ),
          );
        },
      ),
    );
  }
}
