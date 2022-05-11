import 'package:flutter/material.dart';

import 'package:flutter_counter_app/screens/custom_floating_actions.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
        appBar: AppBar(
          title: const Text('CounterScreen'),
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Counter taps', style: fontSize30),
              Text('$counter', style: fontSize30)
            ],
          ),
        ),
        floatingActionButton: CustomFloatingActions(
          increaseFn: increase,
          decreaseFn: decrease,
          resetFn: reset,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}