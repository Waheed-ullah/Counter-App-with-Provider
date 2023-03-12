import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_app/CountChanger.dart';

import 'Counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => CountChanger())],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Counter(),
        ));
  }
}
