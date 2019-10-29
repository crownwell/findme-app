import 'package:flutter/material.dart';

import './../../models/nav_item.dart';

class UserDrawer extends StatelessWidget {
  final List<NavItem> navItems = [
    NavItem(
      'Dashboard',
      '/user/dashboard',
      Icon(Icons.access_alarms),
    ),
    NavItem(
      'Contacts',
      '/user/contacts',
      Icon(Icons.contacts),
    ),
    NavItem(
      'Order History',
      '/user/order-history',
      Icon(Icons.history),
    ),
    NavItem(
      'Wallet',
      '/user/wallet',
      Icon(Icons.account_balance_wallet),
    ),
    NavItem(
      'Statistics',
      '/user/statistics',
      Icon(Icons.show_chart),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        DrawerHeader(
          child: Row(
            children: <Widget>[
              Container(
                height: 90,
                width: 90,
                margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(45.0),
                  child: Image.asset(
                    'assets/images/deliveryman.png',
                    fit: BoxFit.cover,
                    height: 90,
                    width: 90,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(45.0),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
                child: Text('John Doe'),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Column(
            children: <Widget>[
              Column(
                children: navItems
                    .map(
                      (navItem) => ListTile(
                        onTap: () {
                          Navigator.pushNamed(context, navItem.routeName);
                        },
                        title: Text(
                          navItem.title,
                          style: Theme.of(context).textTheme.body1,
                        ),
                        leading: navItem.navIcon,
                      ),
                    )
                    .toList(),
              ),
              ListTile(
                title: Text(
                  'Settings',
                  style: Theme.of(context).textTheme.body1,
                ),
                leading: Icon(Icons.settings),
                // subtitle: Column(
                //   children: <Widget>[
                //     Text('Profile and Security'),
                //     Text('Profile and Security'),
                //   ],
                // ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
