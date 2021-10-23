import 'package:flutter/material.dart';

class Plantoes {
  late String nome;
  late String dr;
  late int duracao;
  late String data;
  late String hora;

  Plantoes(
      {this.nome = '',
      this.dr = '',
      this.duracao = 0,
      this.data = '',
      this.hora = ''});

  Plantoes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    dr = json['dr'];
    duracao = json['duracao'];
    data = json['data'];
    hora = json['hora'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['dr'] = this.dr;
    data['duracao'] = this.duracao;
    data['data'] = this.data;
    data['hora'] = this.hora;
    return data;
  }
}
