import 'package:easy_movie/core/service_locator.dart';
import 'package:easy_movie/features/auth/presentation/login_view_model.dart';
import 'package:easy_movie/features/onboarding/onboarding_page.dart';
import 'package:easy_movie/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupDependencies();
  runApp(
    BlocProvider(
      create: (context) => getIt<LoginViewModel>(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MaterialTheme(TextTheme()).light(),
      darkTheme: MaterialTheme(TextTheme()).dark(),
      home: Scaffold(body: OnboardingPage()),
    );
  }
}
