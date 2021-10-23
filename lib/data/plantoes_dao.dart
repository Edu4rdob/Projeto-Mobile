import 'package:flutter/material.dart';

class PlantoesDao {
  
  carregarPlantoes() {
    Future<List<Plantoes>> carregarPlantoes() async {
      List<Plantoes> listaPlantoes = <Plantoes>[];
    }

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
