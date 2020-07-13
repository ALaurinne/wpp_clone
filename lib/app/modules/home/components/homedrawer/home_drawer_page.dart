import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/shared/constants/appcolors.dart';
import 'package:whatsapp_clone/app/shared/constants/text_styles.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    Key key,
    @required this.user,
    @required this.logout,
  }) : super(key: key);

  final FirebaseUser user;
  final Function logout;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: ListView(
              padding: EdgeInsets.all(5),
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: user.photoUrl.toString().isNotEmpty
                      ? NetworkImage('${user.photoUrl}')
                      : Colors.grey,
                ),
                Padding(padding: EdgeInsets.all(5)),
                Text(
                  'Olá ${user.displayName}',
                  style: TextStyles.PERFIL_NAME_TEXT,
                  textAlign: TextAlign.center,
                ),
                Padding(padding: EdgeInsets.all(5)),
                Text(
                  '${user.phoneNumber}',
                  style: TextStyles.PERFIL_ITEM_TEXT,
                  textAlign: TextAlign.center,
                ),
                Padding(padding: EdgeInsets.all(5)),
                Text(
                  '${user.email}',
                  style: TextStyles.PERFIL_ITEM_TEXT,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: AppColors.PRIMARY_COLOR,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            title: Text(
              'Logout',
            ),
            onTap: logout,
          ),
        ],
      ),
    );
  }
}
