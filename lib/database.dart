import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'LifeStages.dart';

class DatabaseHelper {
  static late Future<Database> database;

  static void initializeDatabase() async {
    // Open the database and store the reference.
    database = openDatabase(
      join(await getDatabasesPath(), 'lifeStages.db'),
      onCreate: (db, version) {
        // Run the CREATE TABLE statement on the database.
        return db.execute(
          'CREATE TABLE lifeStages(id INTEGER PRIMARY KEY, name TEXT, description TEXT, recommendedPlan TEXT, imageLocation TEXT)',
        );
      },
      version: 1,
    );
  }

  static Future<void> insertLifeStages(LifeStages lifeStages) async {
    // Get a reference to the database.
    final db = await database;

    // Insert the Dog into the correct table.
    await db.insert(
      'lifeStages',
      lifeStages.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<LifeStages>> lifeStages() async {
    // Get a reference to the database.
    final db = await database;

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await db.query('lifestages');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return LifeStages(
        id: maps[i]['id'],
        name: maps[i]['name'],
        description: maps[i]['description'],
        recommendedPlan: maps[i]['recommendedPlan'],
        imageLocation: maps[i]['imageLocation'],
      );
    });
  }

  static Future<void> updateLifeStages(LifeStages lifeStages) async {
    // Get a reference to the database.
    final db = await database;

    // Update the given Dog.
    await db.update(
      'lifestages',
      lifeStages.toMap(),
      where: 'id = ?',
      whereArgs: [lifeStages.id],
    );
  }
}
