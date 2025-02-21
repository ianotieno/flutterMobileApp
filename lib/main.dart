import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
         backgroundColor: Colors.amber,
      ),
    
      body: Center(
        child: Text('Hello World!'),
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: () {  },
      child: Icon(Icons.add_a_photo),
    ),
  )));
}

