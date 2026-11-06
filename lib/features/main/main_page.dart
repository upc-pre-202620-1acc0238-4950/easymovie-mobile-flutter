import 'package:easy_movie/core/di/service_locator.dart';
import 'package:easy_movie/features/favorites/presentation/favorites_page.dart';
import 'package:easy_movie/features/home/presentation/home_page.dart';
import 'package:easy_movie/features/home/presentation/home_view_model.dart';
import 'package:easy_movie/features/watchlists/presentation/watchlist_page.dart';
import 'package:easy_movie/features/watchlists/presentation/watchlist_view_model.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const new({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    HomePage(viewModel: getIt<HomeViewModel>()),
    FavoritesPage(viewModel: getIt<HomeViewModel>()),
    WatchlistPage(viewModel: getIt<WatchlistViewModel>()),
  ];

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
            selectedIcon: Icon(Icons.favorite),
            icon: Icon(Icons.favorite_outline),
            label: 'Favorites',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_outline),
            label: 'Watchlist',
          ),
        ],
      ),
    );
  }
}
