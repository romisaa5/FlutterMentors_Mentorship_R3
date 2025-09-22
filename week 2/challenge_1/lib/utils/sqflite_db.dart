import 'package:challenge_1/models/note_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqfliteDb {
  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) return _db;
    _db = await _initDb();
    return _db;
  }

  _initDb() async {
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, 'todo.db');
    return await openDatabase(path, version: 2, onCreate: _onCreate);
  }

  _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE notes (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      note TEXT NOT NULL,
      date TEXT NOT NULL
    )
  ''');
  }

  /// Insert Note
  Future<int> insertNote(Note note) async {
    final myDb = await db;
    return await myDb!.insert(
      'notes',
      note.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  /// Get all Notes
  Future<List<Note>> getNotes() async {
    final myDb = await db;
    final List<Map<String, dynamic>> maps = await myDb!.query('notes');
    return List.generate(maps.length, (i) => Note.fromMap(maps[i]));
  }

  Future<int> updateNote(Note note) async {
    final myDb = await db;
    return await myDb!.update(
      'notes',
      note.toMap(),
      where: 'id = ?',
      whereArgs: [note.id],
    );
  }

  /// Delete Note
  Future<int> deleteNote(int id) async {
    final myDb = await db;
    return await myDb!.delete('notes', where: 'id = ?', whereArgs: [id]);
  }
}
