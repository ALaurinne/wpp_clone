// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sing_in_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SingInController on _SingInControllerBase, Store {
  final _$naoEntrouNoLoginAtom =
      Atom(name: '_SingInControllerBase.naoEntrouNoLogin');

  @override
  bool get naoEntrouNoLogin {
    _$naoEntrouNoLoginAtom.reportRead();
    return super.naoEntrouNoLogin;
  }

  @override
  set naoEntrouNoLogin(bool value) {
    _$naoEntrouNoLoginAtom.reportWrite(value, super.naoEntrouNoLogin, () {
      super.naoEntrouNoLogin = value;
    });
  }

  final _$naoAchouUsuarioAtom =
      Atom(name: '_SingInControllerBase.naoAchouUsuario');

  @override
  bool get naoAchouUsuario {
    _$naoAchouUsuarioAtom.reportRead();
    return super.naoAchouUsuario;
  }

  @override
  set naoAchouUsuario(bool value) {
    _$naoAchouUsuarioAtom.reportWrite(value, super.naoAchouUsuario, () {
      super.naoAchouUsuario = value;
    });
  }

  final _$loadingAtom = Atom(name: '_SingInControllerBase.loading');

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

  final _$isValidAtom = Atom(name: '_SingInControllerBase.isValid');

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

  final _$inLoginAtom = Atom(name: '_SingInControllerBase.inLogin');

  @override
  bool get inLogin {
    _$inLoginAtom.reportRead();
    return super.inLogin;
  }

  @override
  set inLogin(bool value) {
    _$inLoginAtom.reportWrite(value, super.inLogin, () {
      super.inLogin = value;
    });
  }

  final _$loginWithEmailAsyncAction =
      AsyncAction('_SingInControllerBase.loginWithEmail');

  @override
  Future<dynamic> loginWithEmail(String email, String password) {
    return _$loginWithEmailAsyncAction
        .run(() => super.loginWithEmail(email, password));
  }

  final _$_SingInControllerBaseActionController =
      ActionController(name: '_SingInControllerBase');

  @override
  dynamic alreadyHaveAccount(bool value) {
    final _$actionInfo = _$_SingInControllerBaseActionController.startAction(
        name: '_SingInControllerBase.alreadyHaveAccount');
    try {
      return super.alreadyHaveAccount(value);
    } finally {
      _$_SingInControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic dismissAlert() {
    final _$actionInfo = _$_SingInControllerBaseActionController.startAction(
        name: '_SingInControllerBase.dismissAlert');
    try {
      return super.dismissAlert();
    } finally {
      _$_SingInControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic formsValidation(dynamic formKey) {
    final _$actionInfo = _$_SingInControllerBaseActionController.startAction(
        name: '_SingInControllerBase.formsValidation');
    try {
      return super.formsValidation(formKey);
    } finally {
      _$_SingInControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String emailValidation(String value) {
    final _$actionInfo = _$_SingInControllerBaseActionController.startAction(
        name: '_SingInControllerBase.emailValidation');
    try {
      return super.emailValidation(value);
    } finally {
      _$_SingInControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String passwordValidation(String value) {
    final _$actionInfo = _$_SingInControllerBaseActionController.startAction(
        name: '_SingInControllerBase.passwordValidation');
    try {
      return super.passwordValidation(value);
    } finally {
      _$_SingInControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String nameValidation(String value) {
    final _$actionInfo = _$_SingInControllerBaseActionController.startAction(
        name: '_SingInControllerBase.nameValidation');
    try {
      return super.nameValidation(value);
    } finally {
      _$_SingInControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
naoEntrouNoLogin: ${naoEntrouNoLogin},
naoAchouUsuario: ${naoAchouUsuario},
loading: ${loading},
isValid: ${isValid},
inLogin: ${inLogin}
    ''';
  }
}
