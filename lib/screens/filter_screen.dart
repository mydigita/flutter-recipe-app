import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filtered'),
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            child: const Text('Filtered meals'),
          ),
          Expanded(
            child: ListView(
              children: [
                SwitchListTile(
                  title: const Text('Gluten free'),
                  subtitle: const Text('Show gluten free meal'),
                  value: _glutenFree,
                  onChanged: ((newValue) {
                    setState(() {
                      _glutenFree = newValue;
                    });
                  }),
                ),
                SwitchListTile(
                  title: const Text('Vegetarian'),
                  subtitle: const Text('Show vegetarian meals'),
                  value: _vegetarian,
                  onChanged: ((newValue) {
                    setState(() {
                      _vegetarian = newValue;
                    });
                  }),
                ),
                SwitchListTile(
                  title: const Text('Vegan'),
                  subtitle: const Text('Show Vegan meals'),
                  value: _vegan,
                  onChanged: ((newValue) {
                    setState(() {
                      _vegan = newValue;
                    });
                  }),
                ),
                SwitchListTile(
                  title: const Text('Lactose free'),
                  subtitle: const Text('Show Lactose free meals'),
                  value: _lactoseFree,
                  onChanged: ((newValue) {
                    setState(() {
                      _lactoseFree = newValue;
                    });
                  }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
