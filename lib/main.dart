import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: CounterApp()
    );
    
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {

  late   TextEditingController _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child:  Column(
          children:  [
             const SizedBox(height: 100,),
             Text("$_count", style:const  TextStyle(fontSize: 30),),
             
               TextField(
                controller: _controller,
              ),
            Row(
              children: [
                const SizedBox(width: 100 ),
                TextButton( onPressed: () {
                  setState(() {
                    _count = _count + 1;
                  });
              
            }, child: const Text("+")),
                TextButton( onPressed: () {

                  setState(() {
                    _count--;
                  });
              
            }, child: const Text("-"))
              ],
            )
          ],
        ),
      )
    );
  }
}