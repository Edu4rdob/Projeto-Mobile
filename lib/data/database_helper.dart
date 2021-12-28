import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  Database? _db;

  Future<Database> get db async {
    _db = await _initDB();
    return _db!;
  }

  _initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "hospital.db");

    print(path);

    var database = await openDatabase(
      path,
      version: 1,
      onCreate: onCreate,
    );

    return database;
  }

  onCreate(Database db, int version) async {
    String sql =
        'create table usuario (nome varchar(100), nome_use varchar(100), senha varchar(8), data_nascimento varchar(10), cpf varchar(11) PRIMARY KEY, telefone varchar(12), area_atuacao varchar(100));';
    await db.execute(sql);

    sql =
        'create table plantoes (id interger PRIMARY KEY, nome varchar(100), cpf_FK varchar(100) , duracao varchar(100), data varchar(100), hora varchar(100), FOREIGN KEY (cpf_FK) REFERENCES usuario (cpf) );';
    await db.execute(sql);

    sql =
        "INSERT INTO usuario (nome, nome_use, senha, data_nascimento, cpf, telefone, area_atuacao) VALUES ('MARIE CURIE', 'marie_curie02', '12345678', '11/09/2001', '11122233345', '082999887766', 'Cardiologia');";
    await db.execute(sql);
    sql =
        "INSERT INTO usuario (nome, nome_use, senha, data_nascimento, cpf, telefone, area_atuacao) VALUES ('Usuario assistente', 'usu_assistente', '12345678', '27/12/2001', '54333222111', '082999112233', '-');";
    await db.execute(sql);

    sql =
        "INSERT INTO plantoes (id, nome, cpf_FK, duracao, data, hora) VALUES (1, 'PLANTAO CLINICO GERAL', '11122233345', '24', '09/02', '12:00h');";
    await db.execute(sql);
    sql =
        "INSERT INTO plantoes (id, nome, cpf_FK, duracao, data, hora) VALUES (2, 'PLANTAO CARDIOLOGIA', null, '12', '05/04', '00:00h');";
    await db.execute(sql);
    sql =
        "INSERT INTO plantoes (id, nome, cpf_FK, duracao, data, hora) VALUES (3, 'PLANTAO CLINICO GERAL', '11122233345', '12', '09/12', '12:00h');";
    await db.execute(sql);
    sql =
        "INSERT INTO plantoes (id, nome, cpf_FK, duracao, data, hora) VALUES (4, 'PLANTAO PEDIATRICO', null, '24', '06/11', '00:00h');";
    await db.execute(sql);
    sql =
        "INSERT INTO plantoes (id, nome, cpf_FK, duracao, data, hora) VALUES (5, 'PLANTAO CLINICO GERAL', null, '24', '30/05', '14:00h');";
    await db.execute(sql);
  }
}
