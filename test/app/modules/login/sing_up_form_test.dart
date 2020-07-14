import 'dart:math';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:whatsapp_clone/app/app_module.dart';
import 'package:whatsapp_clone/app/modules/home/home_module.dart';
import 'package:whatsapp_clone/app/modules/login/login_controller.dart';
import 'package:whatsapp_clone/app/modules/login/login_module.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  initModule(HomeModule());
  initModule(AppModule());
  initModule(LoginModule());

  final LoginController login = Modular.get();
  Random random = new Random();
  final int number = random.nextInt(100);

  test('Nome vazio deve devolver um erro', () {
    //setup
    var result = login.nameValidation('');
    //verify
    expect(result, 'Insira seu nome');
  });

  test('Nome incompleto deve devolver um erro', () {
    //setup
    var result = login.nameValidation('abc');
    //verify
    expect(result, 'Seu nome completo');
  });

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

  // NÃO FUNCIONA AINDA
  test('Formulario não validado, não deve pesquisar no firebase', () async {
    //setup
    login.isValid = false;
    await login.createAccountWithEmail('lau@lau.com', '123456');
    var result = login.naoEntrouNoLogin;
    //verify
    expect(result, true);
  });

  // NÃO FUNCIONA AINDA
  test('Formulario validado, email já utilizado, deve retorna um erro',
      () async {
    //setup
    login.isValid = true;
    var result =
        await login.createAccountWithEmail('teste@teste.com', '123456');
    //verify
    expect(result, true);
  });

  // NÃO FUNCIONA AINDA
  test('Formulario validado, deve acessar o home', () async {
    //setup
    login.isValid = true;
    var result =
        await login.createAccountWithEmail("teste+$number@teste.com", "123456");
    //verify
    expect(result, true);
  });
}
