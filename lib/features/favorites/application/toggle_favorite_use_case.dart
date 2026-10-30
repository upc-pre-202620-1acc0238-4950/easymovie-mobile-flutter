import 'package:easy_movie/features/favorites/domain/favorite_repository.dart';

class ToggleFavoriteUseCase {
  final FavoriteRepository repository;
  const new({required this.repository});

  Future<void> execute(int id) async {
    final List favoriteIds = await repository.getFavorites();
    favoriteIds.contains(id)
        ? await repository.removeFavorite(id)
        : await repository.addFavorite(id);
  }
}
