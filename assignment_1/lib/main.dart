import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() {
    return _MainAppState();
  }
}

class _MainAppState extends State<MyApp> {
  bool isfocused = false;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text("Assignment 1"),
        ),
        body: Center(
            child: TextField(
                decoration: InputDecoration(
                  enabledBorder:
                 OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                color: isfocused ? Colors.green : Colors.red), ),
                focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green)),
                ),
                onTap: () {
                setState(() {
                isfocused = true;
                });
                }
                )
                )
                );
  }
}
