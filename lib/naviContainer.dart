import 'package:flutter/material.dart';
import 'package:fyp_2/pointHistory.dart';

import 'main.dart';

class NaviContainer extends StatelessWidget {
  const NaviContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //Add a ListView to the Drawer.
      child: ListView(
        //Ensure that ListView doesn't have any padding.
        // This line will remove any padding from the ListView
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        children: [
          ListTile(
            leading: Icon(Icons.point_of_sale),
            title: const Text('Points'),
            onTap: () {
              //Here you can update the state of the app,
              //like, navigating to the screen the user has selected
              //...
              //After user has selected the option,
              //close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PointHistoryState()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.account_tree),
            title: const Text('Life Stages'),
            onTap: () {
              //Here you can update the state of the app,
              //like, navigating to the screen the user has selected
              //...
              //After user has selected the option,
              //close thye drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage(title: 'Flutter Demo Home Page')),
              );
            },
          )
        ],
      ),
    );
  }
}
