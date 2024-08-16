import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemagement_implementation_in_flutter/counter_provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        backgroundColor: Colors.blue, // You can customize the color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.watch<CounterProvider>().counterValue.toString(),
              style: const TextStyle(fontSize: 48),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterProvider>().incrementNumber();
                  },
                  child: const Text('+'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterProvider>().decrementNumber();
                  },
                  child: const Text('-'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
