// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_screen_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatScreenController on _ChatScreenControllerBase, Store {
  final _$messagesListAtom =
      Atom(name: '_ChatScreenControllerBase.messagesList');

  @override
  ObservableList<MessageModel> get messagesList {
    _$messagesListAtom.reportRead();
    return super.messagesList;
  }

  @override
  set messagesList(ObservableList<MessageModel> value) {
    _$messagesListAtom.reportWrite(value, super.messagesList, () {
      super.messagesList = value;
    });
  }

  final _$messageAtom = Atom(name: '_ChatScreenControllerBase.message');

  @override
  MessageModel get message {
    _$messageAtom.reportRead();
    return super.message;
  }

  @override
  set message(MessageModel value) {
    _$messageAtom.reportWrite(value, super.message, () {
      super.message = value;
    });
  }

  final _$isTypingAtom = Atom(name: '_ChatScreenControllerBase.isTyping');

  @override
  bool get isTyping {
    _$isTypingAtom.reportRead();
    return super.isTyping;
  }

  @override
  set isTyping(bool value) {
    _$isTypingAtom.reportWrite(value, super.isTyping, () {
      super.isTyping = value;
    });
  }

  final _$sendMessageAsyncAction =
      AsyncAction('_ChatScreenControllerBase.sendMessage');

  @override
  Future<dynamic> sendMessage() {
    return _$sendMessageAsyncAction.run(() => super.sendMessage());
  }

  final _$_ChatScreenControllerBaseActionController =
      ActionController(name: '_ChatScreenControllerBase');

  @override
  dynamic setMessage(String text) {
    final _$actionInfo = _$_ChatScreenControllerBaseActionController
        .startAction(name: '_ChatScreenControllerBase.setMessage');
    try {
      return super.setMessage(text);
    } finally {
      _$_ChatScreenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeTyping(bool value) {
    final _$actionInfo = _$_ChatScreenControllerBaseActionController
        .startAction(name: '_ChatScreenControllerBase.changeTyping');
    try {
      return super.changeTyping(value);
    } finally {
      _$_ChatScreenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
messagesList: ${messagesList},
message: ${message},
isTyping: ${isTyping}
    ''';
  }
}
