import 'package:flutter/material.dart';

class Plantoes {
  String nome;
  String dr;
  int duracao;
  String data;
  String hora;

  Plantoes({this.nome, this.dr, this.duracao, this.data, this.hora});

  Plantoes.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    dr = json['dr'];
    duracao = json['duracao'];
    data = json['data'];
    hora = json['hora'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['dr'] = this.dr;
    data['duracao'] = this.duracao;
    data['data'] = this.data;
    data['hora'] = this.hora;
    return data;
  }
}

class Plantoes {
  String nome;
  String dr;
  int duracao;
  String data;
  String hora;

  Plantoes({this.nome, this.dr, this.duracao, this.data, this.hora});

  Plantoes.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    dr = json['dr'];
    duracao = json['duracao'];
    data = json['data'];
    hora = json['hora'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['dr'] = this.dr;
    data['duracao'] = this.duracao;
    data['data'] = this.data;
    data['hora'] = this.hora;
    return data;
  }
}
