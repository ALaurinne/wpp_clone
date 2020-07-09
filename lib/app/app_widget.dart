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
        primaryColor: AppColors.primaryColor,
      ),
      darkTheme: ThemeData(
          primaryColor: AppColors.primaryColor, brightness: Brightness.dark),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
