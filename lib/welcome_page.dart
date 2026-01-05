import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _output ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp CS KMUTNB'),
        backgroundColor: Colors.green[200]
            
      ),
      body: Center(
        child:Column(
          children: [
            Text('Hello Bro',
            style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),
            ),
            Text(
              '${_output}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              debugPrint('woowww ');
              setState(() {
                _output= 'Aon Onwara';
              });
            }, child: Text('click'))
          ],
          
        )
      ),
        
    );
  }
}