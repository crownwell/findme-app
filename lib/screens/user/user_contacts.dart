import 'package:findme/screens/components/contact_item.dart';
import 'package:flutter/material.dart';

import './../components/user_drawer.dart';

class UserContacts extends StatelessWidget {
  final List<int> _numbers = [1, 2, 3, 4, 5, 6];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'FindME',
              style: Theme.of(context).textTheme.title,
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            leading: Container(child: Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Container(
                    // height: 60,
                    // width: 60,
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
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
            ))),
        drawer: Drawer(
          child: UserDrawer(),
        ),
        backgroundColor: Color(0xFFEFEFEF),
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Text(
                    'Recent Entries',
                    style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: _numbers.map((num) => ContactItem()).toList()),
                ),
              ],
            ),
          ),
        ])));
  }
}
