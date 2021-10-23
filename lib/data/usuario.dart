import 'package:flutter/material.dart';

class Usuario {
  String nome;
  String nomeUse;
  String senha;
  String dataNascimento;
  String cpf;
  String telefone;
  String areaAtuacao;

  Usuario(
      {this.nome,
      this.nomeUse,
      this.senha,
      this.dataNascimento,
      this.cpf,
      this.telefone,
      this.areaAtuacao});

  Usuario.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    nomeUse = json['nome_use'];
    senha = json['senha'];
    dataNascimento = json['data_nascimento'];
    cpf = json['cpf'];
    telefone = json['telefone'];
    areaAtuacao = json['area_atuacao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['nome_use'] = this.nomeUse;
    data['senha'] = this.senha;
    data['data_nascimento'] = this.dataNascimento;
    data['cpf'] = this.cpf;
    data['telefone'] = this.telefone;
    data['area_atuacao'] = this.areaAtuacao;
    return data;
  }
}