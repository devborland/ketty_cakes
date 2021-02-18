import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routName = '/filters';

  final Function saveFilters;
  final Map<String, bool> currentFilters;
  FiltersScreen(this.currentFilters, this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  void initState() {
    _glutenFree = widget.currentFilters['gluten'];
    _vegetarian = widget.currentFilters['vegetarian'];
    _vegan = widget.currentFilters['vegan'];
    _lactoseFree = widget.currentFilters['lactose'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            tooltip: 'Save Filters',
            onPressed: () {
              final selectedFilters = {
                'gluten': _glutenFree,
                'lactose': _lactoseFree,
                'vegan': _vegan,
                'vegetarian': _vegetarian,
              };
              widget.saveFilters(selectedFilters);
            },
          )
        ],
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
                'Only includes gluten-feee meals',
                _glutenFree,
                (newValue) => setState(() => _glutenFree = newValue),
              ),
              _buildSwitchListTile(
                'Vegetarian',
                'Only includes vegetarian meals',
                _vegetarian,
                (newValue) => setState(() => _vegetarian = newValue),
              ),
              _buildSwitchListTile(
                'Vegan',
                'Only includes vegan meals',
                _vegan,
                (newValue) => setState(() => _vegan = newValue),
              ),
              _buildSwitchListTile(
                'Lactose-free',
                'Only includes lactose-free meals',
                _lactoseFree,
                (newValue) => setState(() => _lactoseFree = newValue),
              ),
            ],
          ))
        ],
      ),
    );
  }

  SwitchListTile _buildSwitchListTile(
    String title,
    String descripion,
    bool currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(descripion),
      value: currentValue,
      onChanged: updateValue,
    );
  }
}
