import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/models/usuario.dart';
import 'package:sqflite/sqflite.dart';

import '../database_helper.dart';

class UsuarioDao {
  Future<List<Usuario>> login(
      {required String usuarionome, required String senhausu}) async {
    List<Usuario> usuarios = [];

    DatabaseHelper databaseHelper = DatabaseHelper();
    Database db = await databaseHelper.db;

    String sql =
        "SELECT * FROM `usuario` WHERE `nome_use` = '$usuarionome' AND `senha` = '$senhausu';";
    final result = await db.rawQuery(sql);

    for (var json in result) {
      Usuario user = Usuario.fromJson(json);
      usuarios.add(user);
    }
    return usuarios;
  }
}
