
import 'package:flutter/material.dart';

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => decreaseFn(),
          backgroundColor: Colors.red,
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
          onPressed: () => resetFn(),
          backgroundColor: Colors.grey,
          child: const Icon(Icons.refresh),
        ),
        FloatingActionButton(
          onPressed: () => increaseFn(),
          backgroundColor: const Color(0xFF26CD7B),
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}