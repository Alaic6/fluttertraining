import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 50, height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(icon: Icon(Icons.notifications),onPressed: () {}),
                IconButton(icon: Icon(Icons.extension),onPressed: () {}),
              ],),
            SizedBox(height: 50),
            Text.rich(
              TextSpan(
                text: 'Bienvenue,',
                style:TextStyle(fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: ' Alexis',
                  )
                ]),
            style: TextStyle(fontSize: 90),
            )
          ],
        ),
      ),
    );
  }
}

final countries = ['japan', 'barcelona', 'greece', 'rome'];
