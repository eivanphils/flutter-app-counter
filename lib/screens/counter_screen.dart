import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter--;
              setState(() {});
            },
            backgroundColor: Colors.red,
            child: const Icon(Icons.remove),
          ),

          FloatingActionButton(
            onPressed: () {
              counter = 0;
              setState(() {});
            },
            backgroundColor: Colors.blueGrey.shade400,
            child: const Icon(Icons.refresh),
          ),

          FloatingActionButton(
            onPressed: () {
              counter++;
              setState(() {});
            },
            backgroundColor: const Color(0xFF26CD7B),
            child: const Icon(Icons.add),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
    );
  }
}
