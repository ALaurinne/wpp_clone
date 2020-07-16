import 'package:whatsapp_clone/app/modules/login/login_module.dart';
import 'package:whatsapp_clone/app/shared/services/singup_auth/sing_up_auth_service.dart';
import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/app_widget.dart';
import 'package:whatsapp_clone/app/modules/home/home_module.dart';
import 'package:whatsapp_clone/app/shared/services/auth/auth_service.dart';
import 'package:whatsapp_clone/app/shared/services/auth/auth_service_interface.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => SingUpAuth()),
        Bind<IAuthService>((i) => AuthService()),
      ];

  @override
  List<Router> get routers => [
        Router(
          Modular.initialRoute,
          module: LoginModule(),
        ),
        Router("/home", module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
