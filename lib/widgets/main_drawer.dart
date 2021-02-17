import 'package:flutter/material.dart';
import 'package:ketty_cakes/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: 120.0,
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              color: Theme.of(context).accentColor,
              child: Text(
                'Cooking Up',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30.0,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            buildListTile(
              'Meals',
              Icons.restaurant,
              () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            buildListTile(
              'Filter',
              Icons.filter_list,
              () {
                Navigator.of(context)
                    .pushReplacementNamed(FiltersScreen.routName);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListTile(String title, IconData icon, Function onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26.0,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }
}
