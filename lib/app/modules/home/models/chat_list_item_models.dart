class ChatListItem {
  final String profileUrl;
  final String personName;
  final String lastMessage;
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
