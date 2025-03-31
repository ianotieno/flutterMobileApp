import 'package:flutter/material.dart';
import 'package:flutter_test_22/core/theme/theme.dart';
import 'package:flutter_test_22/features/auth/presentation/pages/signup_page.dart';

void main() {
  runApp(MaterialApp(
    home: MyHome()
    ));
}
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog Up ',
      theme: AppTheme.darkThemeMode,
      home: const SignupPage(),
    );
  }
}
