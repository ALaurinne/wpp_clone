import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:whatsapp_clone/app/app_module.dart';
import 'package:whatsapp_clone/app/modules/home/home_module.dart';
import 'package:whatsapp_clone/app/modules/login/components/singinform/sing_in_controller.dart';
import 'package:whatsapp_clone/app/modules/login/login_module.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  initModule(HomeModule());
  initModule(AppModule());
  initModule(LoginModule());

  final SingInController login = Modular.get();

  test('Email vazio deve devolver um erro', () {
    //setup
    var result = login.emailValidation('');
    //verify
    expect(result, 'Insira seu email');
  });

  test('Email incompleto deve devolver um erro', () {
    //setup
    var result = login.emailValidation('abc');
    //verify
    expect(result, 'Formato de email invalido');
  });

  test('Senha vazio deve devolver um erro', () {
    //setup
    var result = login.passwordValidation('');
    //verify
    expect(result, 'Insira sua senha');
  });

  test('Senha incompleta deve devolver um erro', () {
    //setup
    var result = login.passwordValidation('abc');
    //verify
    expect(result, 'A senha tem no mínimo 6 digitos');
  });

  test('Formulario não validado, não deve pesquisar no firebase', () async {
    //setup
    login.isValid = false;
    await login.loginWithEmail('lau@lau.com', '123456');
    var result = login.naoEntrouNoLogin;
    //verify
    expect(result, true);
  });

  test('Formulario validado, email e senha errados, deve retorna um erro',
      () async {
    //setup
    login.isValid = true;
    await login.loginWithEmail('lau@lau.com', '123456');
    var result = login.naoAchouUsuario;
    //verify
    expect(result, true);
  });

  test('Formulario validado, deve acessar o home', () {
    //setup
    login.isValid = true;
    login.loginWithEmail("teste@teste.com", "123456");
    var result = login.loading;
    //verify
    expect(result, true);
  });
}
