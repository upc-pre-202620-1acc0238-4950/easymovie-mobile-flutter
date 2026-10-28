import 'package:easy_movie/core/service_locator.dart';
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

  final List<Widget> pages = [
    HomePage(viewModel: getIt<HomeViewModel>()),
    Text('Watchlist'),
    Text('Favorites'),
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
