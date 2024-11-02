import 'package:get/get.dart';
import 'package:kaiecash/page/Models/favourite_person_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class FavouritePersonController extends GetxController {
  // CRUD table database
  static Database? _db;

  // list data yang digunakan untuk menampun hasil database, .obs diguanakan di UI
  var persons = <PersonModel>[].obs;

  Future<Database?> get db async {
    _db ??= await initDB();
    return _db;
  }

  Future<Database> initDB() async {
    var databasePath = await getDatabasesPath();
    String path = join(databasePath, 'favouritePerson_database.db');

    return await openDatabase( 
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
            CREATE TABLE favouritePerson(
              id INTEGER PRIMARY KEY AUTOINCREMENT, 
              name TEXT, 
              bankAccount  INTEGER, 
              initial TEXT
            )
          ''');
      },
    );
  }

  // Insert Task
  Future<int> addPerson(PersonModel task) async {
    var dbClient = await db;
    int result = await dbClient!.insert('favouritePerson', task.toMap());
    print(result.toString());
    loadPerson();
    return result;
  }

  // Retrieve Tasks
  Future<void> loadPerson() async {
    var dbClient = await db;
    List<Map<String, dynamic>> queryResult =
        await dbClient!.query('favouritePerson');
    persons.assignAll(
        queryResult.map((data) => PersonModel.fromMap(data)).toList());
  }

  // Delete Task
  Future<void> deletePerson(int id) async {
    var dbClient = await db;
    await dbClient!.delete('favouritePerson', where: 'id = ?', whereArgs: [id]);
    loadPerson();
  }
}
