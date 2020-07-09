import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:whatsapp_clone/app/config/config.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller
  TextEditingController emailFieldController;
  TextEditingController passFieldController;

  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  // final AuthService auth = AuthService();
  void initState() {
    super.initState();
    emailFieldController = TextEditingController();
    passFieldController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailFieldController.dispose();
    passFieldController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(40),
        color: Colors.white54,
        // Teclado não ficar em cima das coisas
        child: Observer(
          builder: (_) {
            return ListView(
              children: <Widget>[
                // Renderizar imagem com tamanho desejado
                SizedBox(
                  height: 200,
                  width: 200,
                  // child: Image.asset('images/logo.png'),
                ),
                Form(
                  // para utlizar o formkey
                  key: formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: emailFieldController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        validator: controller.emailValidation,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: passFieldController,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        validator: controller.passwordValidation,
                      ),
                      Container(
                        height: 40,
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      controller.loading
                          ? CircularProgressIndicator(
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(primaryColor),
                            )
                          : Container(
                              height: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              child: FlatButton(
                                onPressed: () {
                                  controller.loginWithEmail(
                                      emailFieldController.text,
                                      passFieldController.text);
                                },
                                child: Text(
                                  "Log In",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
