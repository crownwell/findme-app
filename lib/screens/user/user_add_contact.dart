import 'package:flutter/material.dart';

class AddContactScreen extends StatelessWidget {
  static const routeName = "/user/contacts/new";

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
        )),
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 15),
                Text("Add Contact", style: Theme.of(context).textTheme.title),
                SizedBox(height: 30),
                Align(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 110,
                        width: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/images/deliveryman.png',
                            fit: BoxFit.cover,
                            // height: 60,
                            // width: 60,
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0, -15),
                        child: Container(
                          height: 30,
                          width: 30,
                          child: FloatingActionButton(
                            elevation: 0,
                            backgroundColor: Theme.of(context).primaryColor,
                            onPressed: () {},
                            child: Icon(
                              Icons.edit,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Full Name"),
                ),
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Phone Number"),
                ),
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Alternate Phone Number",
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Email Address"),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Company"),
                ),
                SizedBox(height: 20),
                TextField(
                  minLines: 2,
                  maxLines: 4,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Address",
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    elevation: 0,
                    onPressed: () {},
                    textColor: Colors.white,
                    child: Text('Save Contact'),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
