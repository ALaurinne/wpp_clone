class ChatListItem {
  final String profileUrl;
  final String personName;
  String lastMessage;
  final String date;
  bool notRead;

  ChatListItem({
    this.profileUrl,
    this.personName,
    this.lastMessage,
    this.date,
    this.notRead,
  });
}
