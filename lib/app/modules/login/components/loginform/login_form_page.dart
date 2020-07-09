import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:whatsapp_clone/app/config/config.dart';

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

  String email = '';

  String password = '';

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
    return Observer(
      builder: (_) {
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
                validator: widget.emailValidation,
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
                validator: widget.passwordValidation,
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
              widget.loading
                  ? CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
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
                          widget.formsValidation(formKey);
                          widget.loginWithEmail(emailFieldController.text,
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
            ],
          ),
        );
      },
    );
  }
}
