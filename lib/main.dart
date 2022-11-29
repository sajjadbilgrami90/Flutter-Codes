import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}




class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {

  int leftDiceNumber=1;
  int rightDiceNumber=1;

  void random(){
            setState(() {
  leftDiceNumber=Random().nextInt(6)+1; rightDiceNumber=Random().nextInt(6)+1;
  });
  }
  

@override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: Scaffold( backgroundColor: Colors.red, 
        appBar: AppBar(title: const Text('Dicee'), backgroundColor: Colors.red,
      ),
      body:  Center(
        child: Row(  
          children:  [  
            Expanded(child: TextButton (onPressed: ()  {random();},
          
            child: Image.asset('images/dice$leftDiceNumber.png')),),
            Expanded(child: TextButton (onPressed: () {random();},
            child: Image.asset('images/dice$rightDiceNumber.png'))),
          ],
        ),
      ),
      ),
    );
  }
}
  
