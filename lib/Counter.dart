import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_app/CountChanger.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CountChanger>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count Example with Provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Consumer<CountChanger>(
            builder: (context, value, child) {
              return Text(
                value.digits.toString(),
                style: const TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              );
            },
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          provider.increament_digit();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
