import 'package:aula_914/data/database_helper.dart';
import 'package:sqflite/sqflite.dart';

class PacoteDao {

  cadastroParte2() async {
    DatabaseHelper databaseHelper = DatabaseHelper();
    Database db = await databaseHelper.db;

    String sql = 'SELECT * FROM usuario';
    final result = await db.rawQuery(sql);

    print(result);
  }
}
