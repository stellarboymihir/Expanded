
// import 'package:expanded/homepage.dart';
import 'package:expanded/flag.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Indian Flag', 
          style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.orange,
          actions: [
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.share),
              color: Colors.black,
            ),
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.favorite),
              color: Colors.black,
            ),
          ],
          
        ),
        body: const Center(
          child: IndianFlag(),
        )
        ),
      );
  }
}
