import 'package:flutter/material.dart';

class ItemListHeaderMarketShare extends StatelessWidget {
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Function onPressed;
  final Color backgroundColor;
  final bool borderHeader;
  final Color borderHeaderColor;
  final String headerTitle;
  final Widget headerLeading;
  final Widget headerTrailing;
  final double borderRadius;
  final double elevation;
  final String label1;
  final String label2;
  final String label3;
  final String value;
  final String value1;
  final String value2;
  final String value3;

  ItemListHeaderMarketShare(
      {this.margin,
        this.padding,
        this.onPressed,
        this.elevation,
        this.backgroundColor,
        this.borderHeaderColor,
        this.borderHeader = false,
        this.headerTitle = "header title",
        this.headerLeading,
        this.headerTrailing,
        this.borderRadius = 0.0,
        this.value = "value",
        this.label1 = "label1",
        this.label2 = "label2",
        this.label3 = "label3",
        this.value1 = "value1",
        this.value2 = "value2",
        this.value3 = "value3"});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.only(bottom: 10.0),
      child: Card(
        elevation: elevation ?? 6.0,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 2.0),
        ),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: Text(
                              headerTitle,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28.0,
                                  color: Colors.grey[50]),
                            )),
                        Expanded(flex: 0, child: headerTrailing ?? SizedBox()),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 3.0),
                      decoration: borderHeader
                          ? BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 0.5, color: borderHeaderColor ?? Colors.grey[50])))
                          : null,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(flex: 2, child: SizedBox()),
                          Expanded(
                              flex: 8,
                              child: Text(
                                value,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22.0,
                                    color: Colors.grey[50]),
                              )),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                label1,
                                style: TextStyle(
                                    color: Colors.grey[50],
                                    fontSize: 13.0),
                              ),
                            ),
                            Text(
                              value1,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey[50]),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                label2,
                                style: TextStyle(
                                    color: Colors.grey[50],
                                    fontSize: 13.0),
                              ),
                            ),
                            Text(
                              value2,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey[50]),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                label3,
                                style: TextStyle(
                                    color: Colors.grey[50],
                                    fontSize: 13.0),
                              ),
                            ),
                            Text(
                              value3,
                              style: TextStyle(
                                fontSize: 16.0,
                                  color: Colors.grey[50]),
                            ),
                          ],
                        ),
                        SizedBox(),
                        SizedBox(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(borderRadius)),
          ),
        ),
      ),
    );
  }
}
