import 'package:flutter/material.dart';

class ItemListVs extends StatelessWidget {
  final Color backgroundColor;
  final bool borderHeader;
  final String headerTitle;
  final Widget headerLeading;
  final Widget headerTrailing;
  final double borderRadius;
  final double elevation;
  final String labelLeft;
  final String labelRight;
  final String labelCenter;
  final String valueLeft;
  final String valueRight;
  final String valueCenter;

  ItemListVs(
      {this.backgroundColor,
      this.borderHeader = false,
      this.elevation = 2.0,
      this.headerTitle = "header title",
      this.headerLeading,
      this.headerTrailing,
      this.borderRadius = 0.0,
      this.labelLeft = "label",
      this.labelRight = "label",
      this.labelCenter = "label",
      this.valueLeft = "value",
      this.valueRight = "value",
      this.valueCenter = "value"});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width / 2) - 10,
      child: Card(
        elevation: elevation,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: 10.0, bottom: 5.0, left: 10.0, right: 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      headerTitle,
                      style: TextStyle(color: Colors.white),
                    ),
                    headerTrailing ?? SizedBox(),
                  ],
                ),
                decoration: borderHeader
                    ? BoxDecoration(
                        color: Colors.pink,
                        border: Border(
                            bottom: BorderSide(
                                width: 0.5, color: Colors.grey[400])))
                    : BoxDecoration(
                        color: Colors.pink,
                      ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 10.0, bottom: 5.0, left: 10.0, right: 10.0),
                child: Text(
                  valueCenter,
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Text(labelCenter),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 15.0, bottom: 10.0, left: 10.0, right: 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.0),
                          child: Text(
                            labelLeft,
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ),
                        Text(
                          valueLeft,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.0),
                          child: Text(
                            labelRight,
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ),
                        Text(
                          valueRight,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
