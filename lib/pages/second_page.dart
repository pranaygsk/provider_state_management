import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/services/providers/counter_provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, counterProvider, child) => Scaffold(
        appBar: AppBar(
          title: const Text("Second Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counterProvider.number.toString(),
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Previous Page",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  counterProvider.decrement();
                },
                child: const Text(
                  "Decrement",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  counterProvider.reset();
                },
                child: const Text(
                  "Reset",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
