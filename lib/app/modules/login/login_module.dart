import 'package:whatsapp_clone/app/modules/login/components/singupform/sing_up_controller.dart';
import 'package:whatsapp_clone/app/modules/login/components/singupform/sing_up_page.dart';
import 'package:whatsapp_clone/app/modules/login/login_page.dart';
import 'package:whatsapp_clone/app/shared/services/auth/auth_service.dart';
import 'package:whatsapp_clone/app/shared/services/singup_auth/sing_up_auth_service.dart';

import 'login_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController(i.get<AuthService>())),
        Bind((i) => SingUpController(i.get<SingUpAuth>())),
      ];

  @override
  List<Router> get routers => [
        Router(
          Modular.initialRoute,
          child: (_, args) => LoginPage(),
        ),
        Router(
          '/singup',
          child: (_, args) => SingUpPage(),
        ),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
