import 'package:flutter/material.dart';

void main() {
  runApp(MyCounter());
}

class MyCounter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCounterState();
  }
}

class MyCounterState extends State<MyCounter> {
  int count = 0;
  void _counter() {
    setState(() {
      count = count + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('button_counter'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (_counter),
        ),
        body: Container(
          child: Center(
            child: Text('you pressed the button $count times'),
          ),
        ),
      ),
    );
  }
}
