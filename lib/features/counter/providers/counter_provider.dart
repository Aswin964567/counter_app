import 'package:flutter/material.dart';
import '../models/counter_model.dart';

class CounterProvider with ChangeNotifier {
  final List<Counter> _counters = [
    Counter(id: 1, title: "Counter 1"),
    Counter(id: 2, title: "Counter 2"),
  ];

  List<Counter> get counters => _counters;

  void incrementCounter(int id) {
    final counter = _counters.firstWhere((c) => c.id == id);
    counter.value++;
    notifyListeners();
  }
}
