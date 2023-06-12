import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart' as sf;

class Database {
  static final Database instance = Database._init();

  Database._init();

  static sf.Database? _database;

  Future<sf.Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDb();
    return _database!;
  }

  Future<sf.Database> _initDb() async {
    var databasesPath = await sf.getDatabasesPath();
    String path = join(databasesPath, 'default.db');

    // await sf.deleteDatabase(path);

    return await sf.openDatabase(path, version: 1, onCreate: _createDB);
  }

  _createDB(sf.Database db, int version) async {
    await Future.wait([
      // Users
      db.execute('''
        CREATE TABLE users (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT NOT NULL,
          phone TEXT NOT NULL
        )
      '''),

      // Keys
      db.execute('''
        CREATE TABLE keys (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          place TEXT NOT NULL
        )
      '''),

      // Loans
      db.execute('''
        CREATE TABLE loans (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          userId INTEGER NOT NULL,
          keyId INTEGER NOT NULL,
          refunded BOOL NOT NULL DEFAULT FALSE,
          
          FOREIGN KEY (userId) REFERENCES users (id), 
          FOREIGN KEY (keyId) REFERENCES keys (id)
        )
      '''),
    ]);
  }

  Future<List<Map<String, Object?>>> mergeRelated(
    List<Map<String, Object?>> data,
    String table,
    String localKey,
    String foreignKey,
    String relatedName,
  ) async {
    var db = await database;
    List<int> keys = List.from(data.map((entry) => entry[localKey]));
    var results = await db.rawQuery("SELECT * FROM $table WHERE $foreignKey in (${keys.join(',')})");
    var resultsIndexed = results.asMap().map((key, value) => MapEntry(value[foreignKey], value));

    return List.from(data).map((entry) {
      final item = Map<String, Object?>.of(entry);
      item[relatedName] = resultsIndexed[item[localKey]];
      return item;
    }).toList();
  }
}
