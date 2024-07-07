import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "my app",
      home: MyLayout()
    );
  }
}


class MyLayout extends StatefulWidget {

  @override
  State<MyLayout> createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {
  String name = "";
  String data = "";

    Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body)['title'];
      });
    } else {
      setState(() {
        data = 'Failed to load data';
      });
    }
  }

  void submit(){
    fetchData();
    setState(() {
    });
    print(name);

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("myapp"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Name: $data"),
            Text("Name: $name"),
            TextField(
            onChanged: (text){
                name = text;
              },
            ),
            ElevatedButton(
              onPressed: submit, 
              child: Icon(Icons.add))
            ],
          ),
      ),
      );
  }
}