// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatsController on _ChatsControllerBase, Store {
  Computed<List<ChatListItem>> _$listFilteredComputed;

  @override
  List<ChatListItem> get listFiltered => (_$listFilteredComputed ??=
          Computed<List<ChatListItem>>(() => super.listFiltered,
              name: '_ChatsControllerBase.listFiltered'))
      .value;

  final _$chatListItemsAtom = Atom(name: '_ChatsControllerBase.chatListItems');

  @override
  ObservableList<ChatListItem> get chatListItems {
    _$chatListItemsAtom.reportRead();
    return super.chatListItems;
  }

  @override
  set chatListItems(ObservableList<ChatListItem> value) {
    _$chatListItemsAtom.reportWrite(value, super.chatListItems, () {
      super.chatListItems = value;
    });
  }

  final _$filterAtom = Atom(name: '_ChatsControllerBase.filter');

  @override
  String get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(String value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  final _$_ChatsControllerBaseActionController =
      ActionController(name: '_ChatsControllerBase');

  @override
  dynamic newChat() {
    final _$actionInfo = _$_ChatsControllerBaseActionController.startAction(
        name: '_ChatsControllerBase.newChat');
    try {
      return super.newChat();
    } finally {
      _$_ChatsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeMessage() {
    final _$actionInfo = _$_ChatsControllerBaseActionController.startAction(
        name: '_ChatsControllerBase.changeMessage');
    try {
      return super.changeMessage();
    } finally {
      _$_ChatsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFilter(String value) {
    final _$actionInfo = _$_ChatsControllerBaseActionController.startAction(
        name: '_ChatsControllerBase.setFilter');
    try {
      return super.setFilter(value);
    } finally {
      _$_ChatsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic accessChat(ChatListItem person) {
    final _$actionInfo = _$_ChatsControllerBaseActionController.startAction(
        name: '_ChatsControllerBase.accessChat');
    try {
      return super.accessChat(person);
    } finally {
      _$_ChatsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
chatListItems: ${chatListItems},
filter: ${filter},
listFiltered: ${listFiltered}
    ''';
  }
}
