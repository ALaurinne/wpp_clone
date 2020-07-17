// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  final _$inLoginAtom = Atom(name: '_LoginControllerBase.inLogin');

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

  final _$_LoginControllerBaseActionController =
      ActionController(name: '_LoginControllerBase');

  @override
  dynamic alreadyHaveAccount(bool value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.alreadyHaveAccount');
    try {
      return super.alreadyHaveAccount(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
inLogin: ${inLogin}
    ''';
  }
}
