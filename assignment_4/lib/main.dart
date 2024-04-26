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
    return _MyAppstate();
  }
}

class _MyAppstate extends State<MyApp> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: TextField(
          
            controller: _controller,
            maxLength: 20,
            
            decoration: const InputDecoration(
              label: Text("Enter your name"),
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              )
            
            ),
            keyboardType: TextInputType.emailAddress,
            
          ),
        ),
      ),
    );
  }
}
