import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Center(
            child:const Text('Uso de imagen', style: TextStyle(fontSize: 20),), 
          ) 
        ),
        body: Center(
          child: Image.asset('assets/images/dog_22.jpg'), 
        ),
      ),
    );
  }
}
