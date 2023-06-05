import 'package:flutter/material.dart';
import 'package:pro/confirm.dart';

class dat1 extends StatelessWidget {
  String date = '26 Aug 24';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
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
                        builder: (context) => confirm(date),
                      ));
                },
              )
            ],
          ),
    );
  }
}

