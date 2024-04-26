import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    return Scaffold(
      body: Center(
        child:
        Padding(padding: EdgeInsets.all(10.0),
        child: 
        TextField(
          decoration: InputDecoration(
            
              filled: true,
              fillColor: Colors.amber,
              hintText: "Enter your name",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(),
                borderRadius: BorderRadius.circular(15.0),
              ),
            
              contentPadding: const EdgeInsets.symmetric(horizontal: 550)),
        ),
      ),
      ),
    );
  }
}
