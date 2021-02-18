import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Filters'),
        ),
        drawer: MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Adjust your meal selection',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                _buildSwitchListTile(
                  'Gluten-free',
                  _glutenFree,
                  (newValue) {
                    setState(() => _glutenFree = newValue);
                  },
                ),
                _buildSwitchListTile(
                  'Vegetarian',
                  _vegetarian,
                  (newValue) {
                    setState(() => _vegetarian = newValue);
                  },
                ),
                _buildSwitchListTile(
                  'Vegan',
                  _vegan,
                  (newValue) {
                    setState(() => _vegan = newValue);
                  },
                ),
                _buildSwitchListTile(
                  'Lactose-free',
                  _lactoseFree,
                  (newValue) {
                    setState(() => _lactoseFree = newValue);
                  },
                ),
              ],
            ))
          ],
        ));
  }

  SwitchListTile _buildSwitchListTile(
    String title,
    bool currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      onChanged: updateValue,
    );
  }
}
