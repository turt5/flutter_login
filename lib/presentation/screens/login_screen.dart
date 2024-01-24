import 'package:flutter/material.dart';
import 'package:job_app/presentation/theme/app_theme.dart';
import 'package:job_app/presentation/ui/login_ui.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: myTheme(),
      home: Scaffold(
        body: LoginUi(),
      ),
    );
  }
}