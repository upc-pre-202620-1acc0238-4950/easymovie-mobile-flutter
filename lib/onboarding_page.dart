import 'package:easy_movie/login_page.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Spacer(flex: 1),
          Image.asset("assets/images/background.png", fit: BoxFit.cover),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text("Continue"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
