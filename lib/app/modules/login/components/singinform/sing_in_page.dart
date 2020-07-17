import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:whatsapp_clone/app/modules/login/components/singinform/sing_in_controller.dart';
import 'package:whatsapp_clone/app/shared/constants/appcolors.dart';
import 'package:whatsapp_clone/app/shared/constants/text_styles.dart';

class SingInPage extends StatefulWidget {
  const SingInPage({
    Key key,
    this.singUpButton,
  }) : super(key: key);

  final Function singUpButton;

  @override
  _SingInPageState createState() => _SingInPageState();
}

class _SingInPageState extends ModularState<SingInPage, SingInController> {
  TextEditingController emailFieldController;
  TextEditingController passFieldController;

  final formKey = GlobalKey<FormState>();

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

  void login(form, email, pass) async {
    controller.formsValidation(form);
    await controller.loginWithEmail(email, pass);
    if (controller.naoAchouUsuario && controller.isValid) {
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (_) {
          return AlertDialog(
            title: Text('Tente novamente'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Ocorreu um erro em sua solicitação.'),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('OK'),
                onPressed: controller.dismissAlert,
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      // para utlizar o formkey
      key: formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: emailFieldController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email",
              labelStyle: TextStyles.LABEL,
            ),
            style: TextStyles.FORM,
            validator: controller.emailValidation,
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: passFieldController,
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Senha",
              labelStyle: TextStyles.LABEL,
            ),
            style: TextStyles.FORM,
            validator: controller.passwordValidation,
          ),
          Container(
            height: 40,
            alignment: Alignment.centerRight,
            child: FlatButton(
              onPressed: () {},
              child: Text(
                "Esqueceu a senha?",
                style: TextStyles.FORGOT_BUTTON,
              ),
            ),
          ),
          SizedBox(height: 40),
          Observer(
            builder: (_) {
              return controller.loading
                  ? CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                          AppColors.SECONDARY_COLOR),
                    )
                  : Column(
                      children: <Widget>[
                        Container(
                          height: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.SECONDARY_COLOR,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: FlatButton(
                            onPressed: () => login(
                                formKey,
                                emailFieldController.text,
                                passFieldController.text),
                            child: Text(
                              "Entrar",
                              style: TextStyles.LOGIN_BUTTON,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Observer(
                          builder: (_) {
                            return Container(
                              height: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColors.SECONDARY_COLOR,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: FlatButton(
                                onPressed: widget.singUpButton,
                                child: Text(
                                  "Cadastre-se",
                                  style: TextStyles.LOGIN_BUTTON,
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    );
            },
          )
        ],
      ),
    );
  }
}
