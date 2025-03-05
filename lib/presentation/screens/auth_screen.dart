import 'package:blog_app/presentation/screens/sign_up_choice_screen.dart';
import 'package:blog_app/presentation/screens/sign_in_choice_screen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key, required this.setAuthenticated});

  final void Function() setAuthenticated;

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var activeScreen = 'sign_up_screen';

  void switchScreen() {
    setState(() {
      activeScreen =
          activeScreen == 'sign_up_screen'
              ? 'sign_in_screen'
              : 'sign_up_screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = SignUpChoiceScreen(
      onSignUpButtonPressed: widget.setAuthenticated,
      onNavigateToSignInScreenPressed: switchScreen,
    );

    if (activeScreen == 'sign_in_screen') {
      screenWidget = SignInChoiceScreen(
        onSignInButtonPressed: widget.setAuthenticated,
        onNavigateToSignUpScreenPressed: switchScreen,
      );
    }

    return screenWidget;
  }
}
