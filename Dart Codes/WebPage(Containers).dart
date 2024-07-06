import 'package:flutter/material.dart';
String name = "";
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('APPBAR'),
        ),
        body: Center(
          child: Column(
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                     height: 100,  
                      width: 100,
                      color: Colors.green
                  ),
                  const SizedBox(width: 16),
                  Container(
                    alignment: Alignment.center,
                     height: 100,  
                      width: 400,
                      color: Colors.brown,
                      child: Text('Flutter Widgets',
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                      ),
                  ),
                     const SizedBox(width: 16),
                  Container(
                     height: 100,  
                      width: 100,
                      color: Colors.yellow
                  ),
                ],
            ),
            const SizedBox(height: 50),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                     height: 50,  
                      width: 83,
                      color: Colors.blue,
                      child: Text('Container',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                  ),
                  const SizedBox(width: 20),
                 
                  Container(
                     height: 50,  
                      width: 83,
                      color: Colors.red,
                      child: Text('Row',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                  ),
                  const SizedBox(width: 20),
                 
                  Container(
                     height: 50,  
                      width: 83,
                      color: Colors.red,
                      child: Text('Column',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                  ),
                  const SizedBox(width: 20),
                  Container(
                     height: 50,  
                      width: 83,
                      color: Colors.red,
                      child: Text('Expanded',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                  ),
                  const SizedBox(width: 20),
                  Container(
                     height: 50,  
                      width: 83,
                      color: Colors.red,
                      child: Text('Padding',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                  ),
                  const SizedBox(width: 20),
                  Container(
                     height: 50,  
                      width: 83,
                      color: Colors.red,
                      child: Text('Align',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                  ),
                  const SizedBox(width: 20),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                     height: 50,  
                      width: 83,
                      color: Color.fromARGB(255, 255, 45, 45),
                      child: Text('Text',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                  ),
                  const SizedBox(width: 20),
                 
                  Container(
                     height: 50,  
                      width: 83,
                      color: const Color.fromARGB(255, 255, 86, 74),
                      child: Text('Text Field',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                  ),
                  const SizedBox(width: 20),
                 
                  Container(
                     height: 50,  
                      width: 83,
                      color: const Color.fromARGB(255, 255, 113, 103),
                      child: Text('Raised Button',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                  ),
                  const SizedBox(width: 20),
                  Container(
                     height: 50,  
                      width: 83,
                      color: const Color.fromARGB(255, 255, 142, 134),
                      child: Text('Icon',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                  ),
                  const SizedBox(width: 20),
                  Container(
                     height: 50,  
                      width: 83,
                      color: const Color.fromARGB(255, 255, 153, 146),
                      child: Text('Floating Action Button',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                  ),
                  const SizedBox(width: 20),
                  Container(
                     height: 50,  
                      width: 83,
                      color: Color.fromARGB(255, 255, 168, 160),
                      child: Text('Toast',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                  ),
                  const SizedBox(width: 20),
                  ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}