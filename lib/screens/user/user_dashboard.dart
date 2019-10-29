import 'package:findme/screens/components/user_dashboard/recent_orders.dart';
import 'package:flutter/material.dart';

import './../components/user_drawer.dart';
import './../components/user_dashboard/favourite_contacts.dart';
import './../components/user_dashboard/recent_orders.dart';
import './../components/user_dashboard/favourite_merchants.dart';

class UserDashboard extends StatelessWidget {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0), // here the desired height
        child: AppBar(
          title: Text(
            'FindMe',
            style: Theme.of(context).textTheme.title,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.blue),
          leading: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Container(
                  // height: 60,
                  // width: 60,
                  margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset(
                      'assets/images/deliveryman.png',
                      fit: BoxFit.cover,
                      // height: 60,
                      // width: 60,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              );
            },
          ),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.notifications),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: UserDrawer(),
      ),
      backgroundColor: Color(0xFFEFEFEF),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(20, 30, 20, 30),
                  child: FlatButton.icon(
                    padding: EdgeInsets.all(20),
                    onPressed: () {
                      Navigator.pushNamed(context, '/user/new-delivery');
                    },
                    color: Theme.of(context).primaryColor,
                    icon: Icon(
                      Icons.directions_bike,
                      color: Colors.white,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5.0),
                    ),
                    label: Text(
                      'Book a new delivery',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                RecentOrders(numbers),
                FavouriteMerchants(numbers),
                FavouriteContacts(numbers),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
