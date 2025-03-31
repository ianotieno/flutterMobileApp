import 'package:flutter/material.dart';
import 'package:flutter_test_22/core/theme/app_pallete.dart';
import 'package:flutter_test_22/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter_test_22/features/auth/presentation/widgets/auth_gradient_button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child:Form(
          key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Sign Up ',
            style: TextStyle(fontSize: 40, 
            fontWeight:FontWeight.bold),),
            const SizedBox(height: 20),
            AuthField(hintText: 'Name', 
            controller: nameController),
            const SizedBox(height: 10),
             AuthField(hintText: 'Email', 
             controller: emailController),
            const SizedBox(height: 10),
             AuthField(hintText: 'Password', 
             controller: passwordController,
             isObscureText: true,
             ),
            const SizedBox(height: 10),
            const AuthGradientButton(),
            RichText(
            text: TextSpan(text:'Don\'t have an account ? ',
            style:Theme.of(context).textTheme.titleMedium,
            children: [
              TextSpan(
                text: 'Sign In',
                style:Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppPallete.gradient2,
                  fontWeight: FontWeight.bold
                ),
              )
            ]
            ),)
          ],
        ),
      ),
    )
    );
  }
}