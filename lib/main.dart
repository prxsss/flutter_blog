import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// import 'package:blog_app/sign_up_choice_screen.dart';
// import 'package:blog_app/sign_in_choice_screen.dart';
import 'package:blog_app/presentation/screens/auth_wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      // home: SignUpChoiceScreen(),
      // home: SignInChoiceScreen(),
      home: const AuthWrapper(),
    );
  }
}
