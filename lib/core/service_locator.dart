import 'package:easy_movie/features/home/application/get_movies_use_case.dart';
import 'package:easy_movie/features/home/domain/movie_repository.dart';
import 'package:easy_movie/features/home/infrastructure/movie_repository_impl.dart';
import 'package:easy_movie/features/home/infrastructure/remote/movie_api.dart';
import 'package:easy_movie/features/home/presentation/home_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerLazySingleton<MovieApi>(() => MovieApi());
  getIt.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(api: getIt<MovieApi>()),
  );
  getIt.registerLazySingleton<GetMoviesUseCase>(
    () => GetMoviesUseCase(repository: getIt<MovieRepository>()),
  );

  getIt.registerLazySingleton<HomeViewModel>(
    () => HomeViewModel(useCase: getIt<GetMoviesUseCase>()),
  );
}
