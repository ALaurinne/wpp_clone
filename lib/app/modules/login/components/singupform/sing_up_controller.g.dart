// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sing_up_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SingUpController on _SingUpControllerBase, Store {
  final _$naoCadastrouAtom = Atom(name: '_SingUpControllerBase.naoCadastrou');

  @override
  bool get naoCadastrou {
    _$naoCadastrouAtom.reportRead();
    return super.naoCadastrou;
  }

  @override
  set naoCadastrou(bool value) {
    _$naoCadastrouAtom.reportWrite(value, super.naoCadastrou, () {
      super.naoCadastrou = value;
    });
  }

  final _$loadingAtom = Atom(name: '_SingUpControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$isValidAtom = Atom(name: '_SingUpControllerBase.isValid');

  @override
  bool get isValid {
    _$isValidAtom.reportRead();
    return super.isValid;
  }

  @override
  set isValid(bool value) {
    _$isValidAtom.reportWrite(value, super.isValid, () {
      super.isValid = value;
    });
  }

  final _$sucessAtom = Atom(name: '_SingUpControllerBase.sucess');

  @override
  bool get sucess {
    _$sucessAtom.reportRead();
    return super.sucess;
  }

  @override
  set sucess(bool value) {
    _$sucessAtom.reportWrite(value, super.sucess, () {
      super.sucess = value;
    });
  }

  final _$userAtom = Atom(name: '_SingUpControllerBase.user');

  @override
  UserModel get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserModel value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$createAccountAsyncAction =
      AsyncAction('_SingUpControllerBase.createAccount');

  @override
  Future<dynamic> createAccount() {
    return _$createAccountAsyncAction.run(() => super.createAccount());
  }

  final _$_SingUpControllerBaseActionController =
      ActionController(name: '_SingUpControllerBase');

  @override
  dynamic setUser(String name, String email, String password) {
    final _$actionInfo = _$_SingUpControllerBaseActionController.startAction(
        name: '_SingUpControllerBase.setUser');
    try {
      return super.setUser(name, email, password);
    } finally {
      _$_SingUpControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic dismissAlert() {
    final _$actionInfo = _$_SingUpControllerBaseActionController.startAction(
        name: '_SingUpControllerBase.dismissAlert');
    try {
      return super.dismissAlert();
    } finally {
      _$_SingUpControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic formsValidation(dynamic formKey) {
    final _$actionInfo = _$_SingUpControllerBaseActionController.startAction(
        name: '_SingUpControllerBase.formsValidation');
    try {
      return super.formsValidation(formKey);
    } finally {
      _$_SingUpControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String emailValidation(String value) {
    final _$actionInfo = _$_SingUpControllerBaseActionController.startAction(
        name: '_SingUpControllerBase.emailValidation');
    try {
      return super.emailValidation(value);
    } finally {
      _$_SingUpControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String passwordValidation(String value) {
    final _$actionInfo = _$_SingUpControllerBaseActionController.startAction(
        name: '_SingUpControllerBase.passwordValidation');
    try {
      return super.passwordValidation(value);
    } finally {
      _$_SingUpControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String nameValidation(String value) {
    final _$actionInfo = _$_SingUpControllerBaseActionController.startAction(
        name: '_SingUpControllerBase.nameValidation');
    try {
      return super.nameValidation(value);
    } finally {
      _$_SingUpControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
naoCadastrou: ${naoCadastrou},
loading: ${loading},
isValid: ${isValid},
sucess: ${sucess},
user: ${user}
    ''';
  }
}
