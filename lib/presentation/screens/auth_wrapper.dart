import 'package:flutter/material.dart';

import 'package:blog_app/presentation/screens/main_layout.dart';
import 'package:blog_app/presentation/screens/auth_screen.dart';

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

  void logout() {
    setState(() {
      isAuthenticated = false;
      print('isAuthenticated: $isAuthenticated');
    });
  }

  @override
  Widget build(BuildContext context) {
    return isAuthenticated
        ? MainLayout(onConfirmSignOutPressed: logout)
        : AuthScreen(setAuthenticated: setAuthenticated);
  }
}
