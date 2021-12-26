import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/database_helper.dart';
import 'package:flutter_application_1/data/models/plantoes.dart';
import 'package:sqflite/sqlite_api.dart';

class PlantoesDao {
  Future<List<Plantoes>> carregarPlantoes() async {
    List<Plantoes> listaPlantoes = [];

    DatabaseHelper databaseHelper = DatabaseHelper();
    Database db = await databaseHelper.db;

    String sql = 'SELECT * FROM plantoes';
    final result = await db.rawQuery(sql);

    print(result);

    for (var json in result) {
      Plantoes plantao = Plantoes.fromJson(json);
      listaPlantoes.add(plantao);
    }

    return listaPlantoes;
  }
}
