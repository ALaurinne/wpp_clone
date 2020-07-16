import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:whatsapp_clone/app/modules/login/components/singupform/sing_up_controller.dart';
import 'package:whatsapp_clone/app/shared/constants/appcolors.dart';
import 'package:whatsapp_clone/app/shared/constants/text_styles.dart';

import 'sing_up_controller.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key key, this.alreadyHaveAccount, this.loading})
      : super(key: key);

  final Function alreadyHaveAccount;
  final bool loading;

  @override
  _SingUpPageState createState() => _SingUpPageState();
}

class _SingUpPageState extends ModularState<SingUpPage, SingUpController> {
  TextEditingController nameFieldController;
  TextEditingController emailFieldController;
  TextEditingController passFieldController;

  final formKey = GlobalKey<FormState>();

  void initState() {
    super.initState();
    nameFieldController = TextEditingController();
    emailFieldController = TextEditingController();
    passFieldController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nameFieldController.dispose();
    emailFieldController.dispose();
    passFieldController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      // para utlizar o formkey
      key: formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: nameFieldController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Nome",
              labelStyle: TextStyles.LABEL,
            ),
            style: TextStyles.FORM,
            validator: controller.nameValidation,
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: emailFieldController,
            keyboardType: TextInputType.text,
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
          SizedBox(height: 40),
          Observer(
            builder: (_) {
              return controller.loading
                  ? CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                          AppColors.PRIMARY_COLOR),
                    )
                  : Column(children: <Widget>[
                      Container(
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.SECONDARY_COLOR,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            controller.formsValidation(formKey);
                            controller.setUser(
                                nameFieldController.text,
                                emailFieldController.text,
                                passFieldController.text);
                            controller.createAccount();
                            // TODO voltar para o login
                            // widget.alreadyHaveAccount(controller.sucess);
                            // TODO melhorar dialog para o erro
                            // if (controller.naoEntrouNoLogin) {
                            //   showDialog(
                            //       context: context,
                            //       builder: (_) => AlertDialog(
                            //             title: Text("Tente novamente"),
                            //           ),
                            //       barrierDismissible: true);
                            // }
                          },
                          child: Text(
                            "Cadastrar",
                            style: TextStyles.LOGIN_BUTTON,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        alignment: Alignment.center,
                        child: FlatButton(
                          onPressed: () => widget.alreadyHaveAccount(true),
                          child: Text(
                            "Voltar",
                            style: TextStyles.FORGOT_BUTTON,
                          ),
                        ),
                      )
                    ]);
            },
          )
        ],
      ),
    );
  }
}
