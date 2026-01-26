import 'package:flutter/material.dart';
import 'package:myapp/about_page.dart';
import 'package:myapp/detail.dart';
import 'package:myapp/display_page.dart';
import 'package:myapp/list_page.dart';
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
        '/': (context) => const ListPage(),
        '/about': (context) => const AboutPage(),
        '/display': (context) => const DisplayPage(name: ''),
        '/detail': (context) {
          final product = ModalRoute.of(context)!.settings.arguments as Product;
          return Detail(product: product);
        },
      },
    );
  }
}
