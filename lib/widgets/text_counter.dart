import 'package:flutter/material.dart';

class TextCounter extends StatelessWidget {
  const TextCounter({super.key, required this.counter});

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "the counter is",
              style: TextStyle(color: Colors.black87, fontSize: 30),
            ),
            Text(
              "$counter",
              style: const TextStyle(color: Colors.red, fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
