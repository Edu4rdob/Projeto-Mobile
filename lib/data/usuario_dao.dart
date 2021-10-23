import 'package:projeto-mobile/data/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class UsuarioDao {

  carregarUsuarios() async {

    Future<List<Usuario>> carregarUsuarios() async {
      List<Usuario> listaUsuarios = <Usuario>[];
    }

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
}
