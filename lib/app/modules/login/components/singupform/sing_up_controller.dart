import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:whatsapp_clone/app/modules/login/components/singupform/model/user_model.dart';
import 'package:whatsapp_clone/app/shared/services/auth/auth_service.dart';
import 'package:whatsapp_clone/app/shared/services/singup_auth/sing_up_auth_service.dart';

part 'sing_up_controller.g.dart';

class SingUpController = _SingUpControllerBase with _$SingUpController;

abstract class _SingUpControllerBase with Store {
  final SingUpAuth singUpAuth;

  _SingUpControllerBase(this.singUpAuth);

  @observable
  bool naoCadastrou = false;

  @observable
  bool loading = false;

  @observable
  bool isValid = false;

  @observable
  bool sucess = false;

  @observable
  var user = UserModel(dados: Dados());

  @action
  setUser(String name, String email, String password) {
    if (isValid) {
      user.dados.nome = name;
      user.dados.email = email;
      user.senha = password;
      user.dados.foto =
          "https://media-exp1.licdn.com/dms/image/C4E03AQF2zvSzkSaXIw/profile-displayphoto-shrink_400_400/0?e=1600905600&v=beta&t=6x75hDJzs6e8ZnYEZalzOvEqhuoPzrKPnkwLuzRooBA";
    }
  }

// Esperando implementação do AlertDialog
  @action
  dismissAlert() {
    naoCadastrou = false;
    Modular.to.pop();
  }

  @action
  Future createAccount() async {
    if (isValid) {
      try {
        loading = true;
        await singUpAuth.singUp(user);
        sucess = true;
      } catch (e) {
        loading = false;
        sucess = false;
        naoCadastrou = true;
        print(e.toString());
      }
    }
    loading = false;
  }

  // Valida forms como um todo
  @action
  formsValidation(formKey) =>
      isValid = formKey.currentState.validate() ? true : false;

  // Validação do campo de email
  @action
  String emailValidation(String value) {
    if (value.isEmpty) {
      return 'Insira seu email';
    } else if (!value.contains("@")) {
      return 'Formato de email invalido';
    }
    return null;
  }

  // Validação do campo de senha
  @action
  String passwordValidation(String value) {
    if (value.isEmpty) {
      return 'Insira sua senha';
    } else if (value.length < 6) {
      return 'A senha tem no mínimo 6 digitos';
    }
    return null;
  }

  // Validação do campo de senha
  @action
  String nameValidation(String value) {
    if (value.isEmpty) {
      return 'Insira seu nome';
    } else if (!value.contains(" ")) {
      return 'Nome incompleto';
    }
    return null;
  }
}
