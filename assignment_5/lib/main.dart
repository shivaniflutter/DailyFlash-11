import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
  
    return const MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: const Text("Assignment-5"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsetsDirectional.all(15.0),
          child: TextField(
            cursorColor: Colors.red,
            decoration: InputDecoration(
                label: Text("Enter your name"),
                contentPadding: EdgeInsets.symmetric(vertical: 55),
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                )
                ),
          ),
        ),
      ),
    );
  }
}
