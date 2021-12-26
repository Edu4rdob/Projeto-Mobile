import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/models/usuario.dart';
import 'package:sqflite/sqflite.dart';

import '../database_helper.dart';

class UsuarioDao {
  Future<List<Usuario>> carregarUsuarios() async {
    List<Usuario> listaUsuarios = [];

    DatabaseHelper databaseHelper = DatabaseHelper();
    Database db = await databaseHelper.db;

    String sql = 'SELECT * FROM usuario';
    final result = await db.rawQuery(sql);

    for (var json in result) {
      Usuario usuario = Usuario.fromJson(json);
      listaUsuarios.add(usuario);
    }

    return listaUsuarios;
  }

  Future<Usuario> login(
      {required String usuario, required String senha}) async {
    List<Usuario> usuarios = [];

    DatabaseHelper databaseHelper = DatabaseHelper();
    Database db = await databaseHelper.db;

    String sql = "SELECT * FROM `usuario`;";
    final result = await db.rawQuery(sql);

    for (var json in result) {
      Usuario user = Usuario.fromJson(json);
      usuarios.add(user);
    }
    Usuario usuario = usuarios[0];

    return usuario;
  }
}
