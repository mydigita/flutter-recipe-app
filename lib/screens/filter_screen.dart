import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/filters';
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filtered'),
      ),
      drawer: const MainDrawer(),
      body: Container(
        color: null,
        child: const Text('Filtered'),
      ),
    );
  }
}
