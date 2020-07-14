import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:whatsapp_clone/app/shared/constants/appcolors.dart';
import 'package:whatsapp_clone/app/shared/constants/text_styles.dart';

class SingUpForm extends StatefulWidget {
  const SingUpForm(
      {Key key,
      this.emailValidation,
      this.nameValidation,
      this.passwordValidation,
      this.formsValidation,
      this.createAccountWithEmail,
      this.alreadyHaveAccount,
      this.loading})
      : super(key: key);

  final Function emailValidation;
  final Function nameValidation;
  final Function passwordValidation;
  final Function formsValidation;
  final Function createAccountWithEmail;
  final Function alreadyHaveAccount;

  final bool loading;

  @override
  _SingUpFormState createState() => _SingUpFormState();
}

class _SingUpFormState extends State<SingUpForm> {
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
            validator: widget.nameValidation,
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
            validator: widget.emailValidation,
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
            validator: widget.passwordValidation,
          ),
          SizedBox(height: 40),
          widget.loading
              ? CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation<Color>(AppColors.PRIMARY_COLOR),
                )
              : Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.SECONDARY_COLOR,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      widget.formsValidation(formKey);
                      widget.createAccountWithEmail(
                          emailFieldController.text, passFieldController.text);
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
          ),
        ],
      ),
    );
  }
}
