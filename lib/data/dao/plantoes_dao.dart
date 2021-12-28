import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/database_helper.dart';
import 'package:flutter_application_1/data/models/plantoes.dart';
import 'package:sqflite/sqlite_api.dart';

class PlantoesDao {
  Future<List<Plantoes>> carregarPlantoes(String cpf) async {
    List<Plantoes> listaPlantoes = [];
    Plantoes lista;
    DatabaseHelper databaseHelper = DatabaseHelper();
    Database db = await databaseHelper.db;

    String sql = "SELECT * FROM `plantoes`";
    final result = await db.rawQuery(sql);

    for (var json in result) {
      Plantoes plantao = Plantoes.fromJson(json);
      listaPlantoes.add(plantao);
    }
    for (int i = 0; i < listaPlantoes.length; i++) {
      lista = listaPlantoes[i];
      print(lista.nome);
    }

    return listaPlantoes;
  }
}
