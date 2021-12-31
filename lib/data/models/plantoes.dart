import 'package:flutter/material.dart';

class Plantoes {
  late int id;
  late String nome;
  late String cpf;
  late String duracao;
  late String data;
  late String hora;

  Plantoes(
      {this.nome = '',
      this.cpf = '',
      this.duracao = '',
      this.data = '',
      this.hora = ''});

  Plantoes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    cpf = json['cpf_FK'];
    duracao = json['duracao'];
    data = json['data'];
    hora = json['hora'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['cpf_FK'] = this.cpf;
    data['duracao'] = this.duracao;
    data['data'] = this.data;
    data['hora'] = this.hora;
    return data;
  }
}
