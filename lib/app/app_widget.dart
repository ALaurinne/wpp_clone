import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:whatsapp_clone/app/shared/constants/appcolors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Flutter Slidy',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.PRIMARY_COLOR,
      ),
      darkTheme: ThemeData(
          primaryColor: AppColors.PRIMARY_COLOR, brightness: Brightness.dark),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
