// Utilizando o site JSON to Dart

class UserModel {
  String senha;
  Dados dados;

  UserModel({this.senha, this.dados});

  UserModel.fromJson(Map<String, dynamic> json) {
    senha = json['senha'];
    dados = json['dados'] != null ? new Dados.fromJson(json['dados']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['senha'] = this.senha;
    if (this.dados != null) {
      data['dados'] = this.dados.toJson();
    }
    return data;
  }
}

class Dados {
  String nome;
  String email;
  String foto;

  Dados({this.nome, this.email, this.foto});

  Dados.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    email = json['email'];
    foto = json['foto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['email'] = this.email;
    data['foto'] = this.foto;
    return data;
  }
}
