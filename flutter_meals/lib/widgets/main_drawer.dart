import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);
  Widget buildListTile(String title, IconData icon, Function() tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              'Cooking',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // ListTile(
          //   leading: const Icon(
          //     Icons.restaurant,
          //     size: 26,
          //   ),
          //   title: const Text(
          //     'Meals',
          //     style: TextStyle(
          //       fontFamily: 'RobotoCondensed',
          //       fontSize: 24,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          //   onTap: () {
          //     //...
          //   },
          // ),
          // ListTile(
          //   leading: const Icon(
          //     Icons.settings,
          //     size: 26,
          //   ),
          //   title: const Text(
          //     'Filters',
          //     style: TextStyle(
          //       fontFamily: 'RobotoCondensed',
          //       fontSize: 24,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          //   onTap: () {
          //     //...
          //   },
          // ),
          buildListTile(
            'Meals',
            Icons.restaurant,
            () {
              // Navigator.of(context).pushNamed('/');
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTile(
            'Filters',
            Icons.settings,
            () {
              // Navigator.of(context).pushNamed('/filters');
              Navigator.of(context).pushReplacementNamed('/filters');
            },
          ),
        ],
      ),
    );
  }
}
