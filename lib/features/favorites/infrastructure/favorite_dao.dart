import 'package:easy_movie/core/app_database.dart';
import 'package:sqflite/sqflite.dart';

class FavoriteDao {
  final AppDatabase appDatabase;

  const new({required this.appDatabase});

  Future<List<int>> getFavorites() async {
    final Database database = await appDatabase.database;
    List maps = await database.query('favorites');
    return maps.map((map) => map['id'] as int).toList();
  }

  Future<void> addFavorite(int id) async {
    final Database database = await appDatabase.database;
    await database.insert('favorites', {'id': id});
  }

  Future<void> removeFavorite(int id) async {
    final Database database = await appDatabase.database;
    await database.delete('favorites', where: 'id = ?', whereArgs: [id]);
  }
}
