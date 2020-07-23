import 'package:dio/dio.dart';
import 'package:whatsapp_clone/app/modules/login/components/singupform/model/user_model.dart';

class SingUpAuth {
  singUp(UserModel user) async {
    final dio = Dio(BaseOptions(
      baseUrl: "https://us-central1-estagio-clima.cloudfunctions.net",
    ));
    await dio.post(
      "/api/v1/usuarios_chat",
      data: user.toJson(),
    );
  }
}
