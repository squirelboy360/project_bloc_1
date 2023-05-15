import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home()
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.pinkAccent,
        title: const Text('Count App with Bloc'),
      ),
      body: const  Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children:[Text('Current Count'),
          SizedBox(height: 10,),
       Text('0',style: TextStyle(fontSize: 50),)],
       ),
      ),

    );
  }
}
