import 'package:flutter/material.dart';

import './../components/user_drawer.dart';
import './../components/form_with_icon.dart';
import './../components/form_without_icon.dart';

class NewDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "FindME",
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
          )),
        ),
        drawer: Drawer(
          child: UserDrawer(),
        ),
        backgroundColor: Color(0xFFEFEFEF),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'New Delivery',
                      style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 15, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  child: ClipRRect(
                                    borderRadius:
                                        new BorderRadius.circular(5.0),
                                    child: Image.asset(
                                      'assets/images/deliveryman.png',
                                      fit: BoxFit.cover,
                                      height: 60,
                                      width: 60,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: 5, bottom: 5, left: 20),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          'Portal Deliveries',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            color: Colors.blue,
                                            size: 15,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Text(
                                              '4.72',
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 0,
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 30,
                                  color: Color(0xFFC4C4C4),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Card(
                          child: Container(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'PICKUP INFO',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                FormWithoutIcon(
                                  'Item Description',
                                  'You have to enter an item description',
                                ),
                                FormWithIcon(
                                    'Item Category',
                                    Icons.arrow_drop_down,
                                    'Please Select Item Category'),
                                FormWithIcon(
                                  'Item Weight Class',
                                  Icons.arrow_drop_down,
                                  'Please select item weight class',
                                ),
                                FormWithIcon(
                                  'Pickup Contact',
                                  Icons.arrow_drop_down,
                                  'Please select pickup contact',
                                ),
                                FormWithoutIcon(
                                  'Pickup Address',
                                  'Please enter pickup address',
                                ),
                                FormWithIcon(
                                  'Pickup City/Town',
                                  Icons.arrow_drop_down,
                                  'Please select pickup City/Town',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Card(
                          child: Container(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'DELIVERY INFO',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                FormWithIcon(
                                    'Delivery Contact',
                                    Icons.arrow_drop_down,
                                    'Please Select Delivery Contact'),
                                FormWithoutIcon(
                                  'Delivery Address',
                                  'Please enter Delivery address',
                                ),
                                FormWithIcon(
                                  'Nigeria',
                                  Icons.arrow_drop_down,
                                  'Please select country',
                                ),
                                FormWithIcon(
                                  'Delivery City/Town',
                                  Icons.arrow_drop_down,
                                  'Please select Delivery City/Town',
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Delivery Notes',
                                      labelStyle: TextStyle(),
                                      // hasFloatingPlaceholder: true,
                                    ),
                                    minLines: 6,
                                    maxLines: 70,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter some delivery notes';
                                      }
                                    },
                                    // onSaved: (val) => setState(() => _user.firstName = val),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 20, 5, 20),
                      child: FlatButton(
                        padding: EdgeInsets.all(25.0),
                        onPressed: () {
                          Navigator.pushNamed(context, '/user/dashboard');
                        },
                        color: Theme.of(context).primaryColor,
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
