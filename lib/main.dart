import 'package:blog_app/profile_page.dart';
import 'package:blog_app/profileedit_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const ProfilePage(),
        'profileeditpage': (context) => const ProfileEditPage(),
      },
    );
  }
}
