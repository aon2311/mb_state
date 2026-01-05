import 'package:flutter/material.dart';
import 'package:myapp/about_page.dart';
import 'package:myapp/display_page.dart';
import 'package:myapp/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/about': (context) => const AboutPage(),
         '/display': (context) =>  DisplayPage(
            name: '',
         ),
      },
      
    );
  }
}
