import 'package:counter_app/features/counter/models/counter_model.dart';
import 'package:counter_app/features/counter/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterDetailScreen extends StatelessWidget {
  final Counter counter;
  const CounterDetailScreen({super.key, required this.counter, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(counter.title)),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context, counterProvider, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Counter Value: ${counter.value}', style: TextStyle(fontSize: 24)),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    counterProvider.incrementCounter(counter.id);
                  },
                  child: Text("Increment"),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}