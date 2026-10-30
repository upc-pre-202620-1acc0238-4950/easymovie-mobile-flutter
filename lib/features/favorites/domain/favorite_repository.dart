abstract class FavoriteRepository {
  Future<void> addFavorite(int id);
  Future<void> removeFavorite(int id);
  Future<List<int>> getFavorites();
}