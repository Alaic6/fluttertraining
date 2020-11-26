//import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

//add import to rendering library
import 'package:flutter/rendering.dart';

void main() {
/*  debugPaintSizeEnabled=true;
  debugPaintBaselinesEnabled=true;
  debugPaintPointersEnabled=true;
  debugPaintLayerBordersEnabled=true;*/
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    var column = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 35),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
            IconButton(icon: Icon(Icons.extension), onPressed: () {}),
          ],
        ),
        SizedBox(height: 10),
        Text.rich(
          TextSpan(
              text: 'Welcome,',
              style: TextStyle(fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: ' \nAlexis',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                )
              ]),
          style: TextStyle(fontSize: 50),
        ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                size: 30,
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: 'Rechercher'),
        ),
        SizedBox(height: 40),
        Text(
          'Endroits sauvegardés',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),
        //TODO Ajouter une GridView
        SizedBox(
          height: 300,
          child: GridView.count(
            padding: EdgeInsets.zero,
            crossAxisCount: 2,
            childAspectRatio: 1.45,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              for (var ctr in countries) Image.asset('assets/images/$ctr.png')
            ],
          ),
        )
      ],
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: column,
      ),
    );
  }
}

final countries = ['japan', 'barcelona', 'greece', 'rome'];
