// To parse this JSON data, do
//
//     final messageModel = messageModelFromJson(jsonString);

import 'dart:convert';

MessageModel messageModelFromJson(String str) =>
    MessageModel.fromJson(json.decode(str));

String messageModelToJson(MessageModel data) => json.encode(data.toJson());

class MessageModel {
  MessageModel({
    this.messageId,
    this.horario,
    this.remetente,
    this.status,
    this.texto,
  });

  String messageId;
  int horario;
  String remetente;
  int status;
  String texto;

  MessageModel copyWith({
    String messageId,
    int horario,
    String remetente,
    int status,
    String texto,
  }) =>
      MessageModel(
        messageId: messageId ?? this.messageId,
        horario: horario ?? this.horario,
        remetente: remetente ?? this.remetente,
        status: status ?? this.status,
        texto: texto ?? this.texto,
      );

  factory MessageModel.fromJson(Map<dynamic, dynamic> json) => MessageModel(
        messageId: json["message_id"] == null ? null : json["message_id"],
        horario: json["horario"] == null ? null : json["horario"],
        remetente: json["remetente"] == null ? null : json["remetente"],
        status: json["status"] == null ? null : json["status"],
        texto: json["texto"] == null ? null : json["texto"],
      );

  Map<String, dynamic> toJson() => {
        "message_id": messageId == null ? null : messageId,
        "horario": horario == null ? null : horario,
        "remetente": remetente == null ? null : remetente,
        "status": status == null ? null : status,
        "texto": texto == null ? null : texto,
      };
}
