import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MerchantView extends SimpleDialog {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: min(500, MediaQuery.of(context).size.height * 0.7),
            minWidth: double.infinity,
          ),
          child: Stack(
            children: <Widget>[
              Card(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 100,
                          // fit: BoxFit.contain,
                          child: Image.asset(
                            'assets/images/deliveryman.png',
                            fit: BoxFit.cover,
                            // height: 60,
                            // width: 60,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Griffin Stores',
                          style: Theme.of(context).textTheme.subhead,
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: BlockDetail(
                                value: 4.3.toStringAsFixed(2),
                                label: "RATINGS",
                                icon: Icon(
                                  Icons.star,
                                  color: Theme.of(context).primaryColor,
                                  size: 18,
                                ),
                              ),
                            ),
                            SizedBox(width: 7),
                            Expanded(
                              child: BlockDetail(
                                value: 78.toString(),
                                label: "COMPLETED TRANSACTIONS",
                                icon: Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                  size: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'We offer the best in laptop repairs and gadget procurement',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: Theme.of(context)
                                .textTheme
                                .body1
                                .copyWith(height: 1.4),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(width: 25),
                            Expanded(
                              flex: 1,
                              child: LabelChip('Interstate'),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              flex: 1,
                              child: LabelChip('International'),
                            ),
                            SizedBox(width: 25),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 20,
                // top: -25,
                child: Transform.translate(
                  offset: Offset(0, -25),
                  child: FloatingActionButton(
                    elevation: 0,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.close),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BlockDetail extends StatelessWidget {
  const BlockDetail({
    Key key,
    @required this.label,
    @required this.icon,
    @required this.value,
  }) : super(key: key);

  final String label;
  final Icon icon;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFFC4C4C4), width: 0.5),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            label,
            style: Theme.of(context).textTheme.caption,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              icon,
              SizedBox(width: 5),
              Text(
                value,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LabelChip extends StatelessWidget {
  final String label;

  const LabelChip(this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFFC4C4C4), width: 0.5),
        borderRadius: BorderRadius.circular(4),
      ),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Transform.rotate(
            angle: pi / 4,
            child: CircleAvatar(
              radius: 10,
              child: Icon(
                Icons.flight,
                color: Colors.white,
                size: 13,
              ),
            ),
          ),
          SizedBox(width: 5),
          Text(
            label,
          ),
        ],
      ),
    );
  }
}
