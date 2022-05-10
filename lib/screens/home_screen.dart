import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Counter taps', style: fontSize30),
            Text('0', style: fontSize30)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          print('hola mundo')
        },
        backgroundColor: Colors.blueGrey.shade400,
        child: const Icon(Icons.touch_app_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
