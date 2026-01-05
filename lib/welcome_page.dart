import 'package:flutter/material.dart';
import 'package:myapp/about_page.dart';
import 'package:myapp/display_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _output = ''; //1
  final _textCotroller = TextEditingController(); //2

  @override
  void initState() {
    super.initState();
    debugPrint("initState");
    _output = 'Enter Your Name';
  }

  @override
  void dispose() {
    _textCotroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Welcome Page'),
          actions: [
            IconButton(
              icon: const Icon(Icons.info),
              tooltip: 'About',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ),
                );
              },
            ),
          ],
          backgroundColor: Colors.green[200]),
      body: Center(
          child: Column(
        children: [
          Text(
            'Hello Bro',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          TextField(
            controller: _textCotroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ennter Name',
              labelText: "Name",
            ),
          ),
          Text(
            '${_output}',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                String input = _textCotroller.text;
                debugPrint('Input : $input ');
                setState(() {
                  _output = 'my name is $input';
                });
              },
              child: Text('click')),
          ElevatedButton(
              onPressed: () {
                String input = _textCotroller.text;
                int inputAge = 18;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DisplayPage(
                              name: input,
                              age: inputAge,
                            )));
                debugPrint('Input : $input ');
                setState(() {
                  _output = 'my name is $input';
                });
              },
              child: Text('Didplay on Next Page')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: const Text(
                'About Us ( Name Route )',
                style: TextStyle(fontSize: 18),
              )),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/display');
              },
              child: const Text(
                'Display ( Name Route )',
                style: TextStyle(fontSize: 18),
              )),
        ],
      )),
    );
  }
}
