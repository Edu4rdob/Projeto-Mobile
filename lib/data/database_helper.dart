import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {

  Database _db;

  Future<Database> get db async {
    _db = await _initDB();
    return _db;
  }

  _initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "banco.db");

    print(path);

    var db = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );

    return db;
  }

  Future<FutureOr<void>> _onCreate(Database db, int version) async {
    String sql =
        'create table cadastro_p2 (data_nascimento varchar(10), cpf varchar(11) PRIMARY KEY, telefone varchar(12), area_atuacao varchar(100));';
    await db.execute(sql);

    sql =
        "INSERT INTO cadastro_p2 (data_nascimento, cpf, telefone, area_atuacao) VALUES ('11/09/2001', '11122233345', '082999887766', 'Cardiologia');";
    await db.execute(sql);
  }
}