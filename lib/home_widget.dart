import 'package:flutter/material.dart';
import 'counter_display_widget.dart';

import 'counter.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Counter counter = Counter();

  void _incrementCounter() {
    setState(() {
      counter.increment();
    });
  }

  void _decrementCounter() {
    setState(() {
      counter.decrement();
    });
  }

  void _resetCounter() {
    setState(() {
      counter.reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: CounterDisplay(number: counter.number),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            key: const Key('decrementButton'),
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            key: const Key('resetButton'),
            onPressed: _resetCounter,
            tooltip: 'Reset',
            child: const Icon(Icons.clear),
          ),
          FloatingActionButton(
            key: const Key('incrementButton'),
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
