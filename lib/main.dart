import 'package:flutter/material.dart';
import 'package:pro/confirm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  String date='26 Aug 24';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff000000),
        useMaterial3: true,
      ),
      home:Scaffold(
        appBar: AppBar(title: const Text('Univest')),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text(
                'send date',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => confirm(date1: date,),
                    ));
              },
            )
          ],
        )
      ),
    );
  }
}
