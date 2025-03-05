import 'package:flutter/material.dart';

import 'package:blog_app/presentation/screens/main_layout.dart';
import 'package:blog_app/presentation/screens/sign_up_choice_screen.dart';

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({super.key});

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  var isAuthenticated = false;

  void setAuthenticated() {
    setState(() {
      isAuthenticated = true;
      print('isAuthenticated: $isAuthenticated');
    });
  }

  @override
  Widget build(BuildContext context) {
    return isAuthenticated
        ? const MainLayout()
        : SignUpChoiceScreen(onSignUpButtonPressed: setAuthenticated);
  }
}
