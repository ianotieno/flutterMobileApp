import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHome()
    ));
}
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My test App'),
         backgroundColor: Colors.amber,
      ),
    
      body: Center(
        child: Image(image: 
        NetworkImage('https://img.freepik.com/free-photo/night-sky-with-planets-galaxies-scene-generative-ai_188544-7873.jpg?t=st=1740407840~exp=1740411440~hmac=087783d5f186de8d64138e025d97065d236c8b9b7d437e74105ef0003954dff7&w=996')),
      
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: () {  },
      child: Icon(Icons.add),
    ),
  );
  }
}
