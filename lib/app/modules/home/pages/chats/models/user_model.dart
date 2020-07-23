// To parse this JSON data, do
//
//     final messageModel = messageModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String contato;
  String imageUrl;
  String status;
  String key;

  UserModel({this.contato, this.imageUrl, this.status, this.key});

  factory UserModel.fromJson(Map<dynamic, dynamic> json) => UserModel(
        contato: json["nome"],
        imageUrl: json["foto"],
        status: json["email"],
        key: json["key"],
      );

  Map<String, dynamic> toJson() => {
        "contato": contato,
        "imageUrl": imageUrl,
        "status": status,
        "key": key,
      };

  copyWith({
    String contato,
    String imageUrl,
    String status,
    String key,
  }) {
    return UserModel(
      contato: contato ?? this.contato,
      imageUrl: imageUrl ?? this.imageUrl,
      status: status ?? this.status,
      key: key ?? this.key,
    );
  }
}
