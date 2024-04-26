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
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  bool issearching=false;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
    appBar: AppBar(
    title: const Text("Assignment 2"),
    centerTitle: true,
    backgroundColor: Colors.grey,
    ),
    body:  Center(
      child: TextField(
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(),
        ),
        suffixIcon:Row(
           mainAxisSize: MainAxisSize.min,
          children: [
          if(issearching)Icon(Icons.search),
          SizedBox(width: 8,),
          Icon(Icons.lock),
            ]
        )
        
      ),
       keyboardType: TextInputType.emailAddress,
      onTap:(){
        setState(() {
          issearching=true;
        });
      }
      )
    )
    );
    
  
    
  

       }
      
  }
    
  
