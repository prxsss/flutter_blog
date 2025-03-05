import 'package:flutter/material.dart';

import 'package:blog_app/sign_up_choice_screen.dart';
// import 'package:blog_app/sign_in_choice_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpChoiceScreen(),
      // home: SignInChoiceScreen(),
    );
  }
}
