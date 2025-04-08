import 'package:flutter/material.dart';
import 'package:flutter_test_22/core/secrets/app_secrets.dart';
import 'package:flutter_test_22/core/theme/theme.dart';
import 'package:flutter_test_22/features/auth/presentation/pages/login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 final supabase=  await Supabase.initialize(
    url: AppSecrets.supabaseUrl,
    anonKey: AppSecrets.supabaseAnonKey,
  );
  runApp(MaterialApp(home: MyHome()));
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog Up ',
      theme: AppTheme.darkThemeMode,
      home: const LoginPage(),
    );
  }
}
