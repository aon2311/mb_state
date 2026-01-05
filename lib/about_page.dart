import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp CS KMUTNB'),
        backgroundColor: Colors.green[200]
            
      ),
      body: const Text(
        'Hello byeๆ'
        )
    );
  }
}
