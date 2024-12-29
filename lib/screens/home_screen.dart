import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _favPlaces = [];

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
      child: Text("No places added yer"),
    );

    if (_favPlaces.isNotEmpty) {
      content = ListView(
        padding: const EdgeInsets.all(12),
        children: _favPlaces.map((items) => Text(items)).toList(),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Places"),
        actions: const [Icon(Icons.add)],
      ),
      body: content,
    );
  }
}
