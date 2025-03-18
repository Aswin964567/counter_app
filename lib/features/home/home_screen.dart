import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          // Text("Counter"),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              context.pushNamed('counter');
            },
            child: Text("Press to New page"),
          ),
        ],
      ),
    );
  }
}
