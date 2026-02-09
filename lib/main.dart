import 'package:flutter/material.dart';
import 'package:myapp/about_page.dart';
import 'package:myapp/detail_page.dart';
import 'package:myapp/display_page.dart';
import 'package:myapp/mylist_page.dart';
import 'package:myapp/model/product.dart';

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
        //'/': (context) => const DetailPage(),
        '/': (context) => const MyListPage(),
        '/about': (context) => const AboutPage(),
        '/display': (context) => const DisplayPage(name: ''),
        
      },
    );
  }
}
