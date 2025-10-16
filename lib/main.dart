import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  void _decrement() {
    if (_counter == 0) return;
    setState(() {
      _counter--;
    });
  }

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Contador')), 
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container( 
              child: Center(
                child: Text("Counter: $_counter", style: TextStyle(fontSize: 30)),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: _reset, child: Text("0")),
                Row(
                  children: [
                    ElevatedButton(onPressed: _decrement, child: Text("-")),
                    ElevatedButton(onPressed: _increment, child: Text("+")),
                  ],
                ),
              ],
            )        
          ],
        ),
      ),
    );
  }
}

