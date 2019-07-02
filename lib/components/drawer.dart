import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Restfood'),
              accountEmail: Text('Hi'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            Divider(),
            InkWell(
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            )
          ],
        ),
      );
  }
}