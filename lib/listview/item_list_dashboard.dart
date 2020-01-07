import 'package:flutter/material.dart';

class ItemListDashboard extends StatelessWidget {
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Color backgroundColor;
  final bool borderHeader;
  final String headerTitle;
  final Widget headerLeading;
  final Widget headerTrailing;
  final double borderRadius;
  final String label1;
  final String label2;
  final String label3;
  final String value1;
  final String value2;
  final String value3;
  final String trailing;

  ItemListDashboard(
      {this.margin,
      this.padding,
      this.backgroundColor,
      this.borderHeader = false,
      this.headerTitle = "header title",
      this.headerLeading,
      this.headerTrailing,
      this.borderRadius = 0.0,
      this.label1 = "label1",
      this.label2 = "label2",
      this.label3 = "label3",
      this.value1 = "1",
      this.value2 = "2",
      this.value3 = "3",
      this.trailing});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      padding: padding ?? EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Text(
                        headerTitle,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                  Expanded(flex: 0, child: headerTrailing ?? SizedBox()),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 3.0, bottom: 20.0),
                decoration: borderHeader
                    ? BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 0.5, color: Colors.grey[50])))
                    : null,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            label1,
                            style: TextStyle(
                                color: Colors.grey[50], fontSize: 12.0),
                          ),
                        ),
                        Text(
                          value1,
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            label2,
                            style: TextStyle(
                                color: Colors.grey[50], fontSize: 12.0),
                          ),
                        ),
                        Text(
                          value2,
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            label3,
                            style: TextStyle(
                                color: Colors.grey[50], fontSize: 12.0),
                          ),
                        ),
                        Text(
                          value3,
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(flex: 10, child: SizedBox())
                ],
              )
            ],
          ),
          Positioned(
            top: 25.0,
              right: 10.0,
              child: Container(
                alignment:
                    borderHeader ? Alignment.bottomCenter : Alignment.center,
                child: Text(
                  trailing,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )),
        ],
      ),
      decoration: BoxDecoration(
          color: backgroundColor ?? Colors.red,
          borderRadius: BorderRadius.circular(borderRadius)),
    );
  }
}
