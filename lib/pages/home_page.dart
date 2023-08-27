import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/pages/second_page.dart';
import 'package:provider_state_management/services/providers/counter_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, counterProvider, child) =>
          Scaffold(
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                counterProvider.increment();
              },
              child: const Icon(Icons.add),
            ),
            appBar: AppBar(
              title: const Text("Home Page"),
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
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SecondPage()),);
                    },
                    child: const Text(
                      "Next Page",
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
