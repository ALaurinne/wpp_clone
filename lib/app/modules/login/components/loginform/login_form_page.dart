import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:whatsapp_clone/app/shared/constants/appcolors.dart';
import 'package:whatsapp_clone/app/shared/constants/text_styles.dart';

class LoginForm extends StatefulWidget {
  const LoginForm(
      {Key key,
      this.emailValidation,
      this.passwordValidation,
      this.formsValidation,
      this.loginWithEmail,
      this.loading})
      : super(key: key);

  final Function emailValidation;
  final Function passwordValidation;
  final Function formsValidation;
  final Function loginWithEmail;
  final bool loading;

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
            validator: widget.emailValidation,
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: passFieldController,
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              labelStyle: TextStyles.LABEL,
            ),
            style: TextStyles.FORM,
            validator: widget.passwordValidation,
          ),
          Container(
            height: 40,
            alignment: Alignment.centerRight,
            child: FlatButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyles.FORGOT_BUTTON,
              ),
            ),
          ),
          SizedBox(height: 40),
          Observer(
            builder: (_) {
              return widget.loading
                  ? CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                          AppColors.PRIMARY_COLOR),
                    )
                  : Container(
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.PRIMARY_COLOR,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          widget.formsValidation(formKey);
                          widget.loginWithEmail(emailFieldController.text,
                              passFieldController.text);
                        },
                        child: Text(
                          "Log In",
                          style: TextStyles.LOGIN_BUTTON,
                        ),
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }
}
