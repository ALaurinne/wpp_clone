class ChatMessage {
  final String message;
  final bool isSentByMe;
  final String date;

  ChatMessage({
    this.message,
    this.date = "16:00",
    this.isSentByMe = true,
  });
}
