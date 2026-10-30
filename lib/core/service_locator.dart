import 'package:easy_movie/core/app_database.dart';
import 'package:easy_movie/features/favorites/application/get_favorites_use_case.dart';
import 'package:easy_movie/features/favorites/application/toggle_favorite_use_case.dart';
import 'package:easy_movie/features/favorites/domain/favorite_repository.dart';
import 'package:easy_movie/features/favorites/infrastructure/favorite_dao.dart';
import 'package:easy_movie/features/favorites/infrastructure/favorite_repository_impl.dart';
import 'package:easy_movie/features/home/application/get_movies_use_case.dart';
import 'package:easy_movie/features/home/domain/movie_repository.dart';
import 'package:easy_movie/features/home/infrastructure/movie_repository_impl.dart';
import 'package:easy_movie/features/home/infrastructure/remote/movie_api.dart';
import 'package:easy_movie/features/home/presentation/home_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerLazySingleton<AppDatabase>(() => AppDatabase());
  getIt.registerLazySingleton<FavoriteDao>(
    () => FavoriteDao(appDatabase: getIt<AppDatabase>()),
  );

  getIt.registerLazySingleton<FavoriteRepository>(
    () => FavoriteRepositoryImpl(dao: getIt<FavoriteDao>()),
  );

  getIt.registerLazySingleton<GetFavoritesUseCase>(
    () => GetFavoritesUseCase(repository: getIt<FavoriteRepository>()),
  );

  getIt.registerLazySingleton<ToggleFavoriteUseCase>(
    () => ToggleFavoriteUseCase(repository: getIt<FavoriteRepository>()),
  );

  getIt.registerLazySingleton<MovieApi>(() => MovieApi());
  getIt.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(api: getIt<MovieApi>()),
  );
  getIt.registerLazySingleton<GetMoviesUseCase>(
    () => GetMoviesUseCase(repository: getIt<MovieRepository>()),
  );

  getIt.registerLazySingleton<HomeViewModel>(
    () => HomeViewModel(
      getMovies: getIt<GetMoviesUseCase>(),
      getFavorites: getIt<GetFavoritesUseCase>(),
      toggleFavorite: getIt<ToggleFavoriteUseCase>(),
    ),
  );
}
