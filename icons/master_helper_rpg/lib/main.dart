import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[600],
        appBar: AppBar(
          title: Center(child: Text('I Am Rich')),
          backgroundColor: Colors.grey[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/cthulhuCartaCostas.jpg'),
          ),
        ),
      ),
    ),
  );
}