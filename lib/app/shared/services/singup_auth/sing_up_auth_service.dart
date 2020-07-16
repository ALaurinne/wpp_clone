import 'package:dio/dio.dart';
import 'package:whatsapp_clone/app/modules/login/components/singupform/model/user_model.dart';

class SingUpAuth {
  singUp(UserModel user) async {
    final dio = new Dio();
    try {
      await dio.post(
          "https://us-central1-estagio-clima.cloudfunctions.net/api/v1/usuarios_chat",
          data: user.toJson());
      print("sucess");
    } catch (e) {
      print(e.toString());
    }
  }
}
