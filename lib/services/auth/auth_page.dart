import 'package:bisabisnis/pages/login_screen.dart';
import 'package:bisabisnis/pages/signIn_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
//initially, show the login page
  bool showLogInPage = true;

  void toggleScreens() {
    setState(() {
      showLogInPage = !showLogInPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogInPage) {
      return LogInPage(showSignUpPage: toggleScreens);
    } else {
      return SignUpPage(showLogInPage: toggleScreens);
    }
  }
}
