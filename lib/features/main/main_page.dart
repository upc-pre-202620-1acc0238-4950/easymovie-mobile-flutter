import 'package:easy_movie/features/home/application/get_movies_use_case.dart';
import 'package:easy_movie/features/home/domain/movie_repository.dart';
import 'package:easy_movie/features/home/infrastructure/movie_repository_impl.dart';
import 'package:easy_movie/features/home/infrastructure/remote/movie_api.dart';
import 'package:easy_movie/features/home/presentation/home_page.dart';
import 'package:easy_movie/features/home/presentation/home_view_model.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const new({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  late final List<Widget> pages;
  late final HomeViewModel viewModel;
  late final GetMoviesUseCase useCase;
  late final MovieRepository repository;
  late final MovieApi api;

  @override
  void initState() {
    super.initState();
    api = MovieApi();
    repository = MovieRepositoryImpl(api: api);
    useCase = GetMoviesUseCase(repository: repository);
    viewModel = HomeViewModel(useCase: useCase);

    pages = [
      HomePage(viewModel: viewModel),
      Text('Watchlist'),
      Text('Favorites'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: pages[selectedIndex]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(Icons.movie),
            icon: Icon(Icons.movie_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_outline),
            label: 'Watchlist',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.favorite),
            icon: Icon(Icons.favorite_outline),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
