import 'package:flutter/material.dart';
import 'package:zain_ui_msc/line_dash.dart';

class ItemListMarketshare extends StatelessWidget {
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Function onPressed;
  final Color backgroundColor;
  final Color textColor;
  final bool borderHeader;
  final Color borderHeaderColor;
  final Color bgHeaderColor;
  final String headerTitle;
  final Widget headerLeading;
  final Widget headerTrailing;
  final double borderRadius;
  final double elevation;
  final Widget label1;
  final Widget label2;
  final Widget label3;
  final Widget label4;
  final Widget label5;
  final Widget label6;
  final String labelBottom1;
  final String labelBottom2;
  final String value1;
  final String value2;
  final String value3;
  final Widget value4;
  final Widget value5;
  final Widget value6;
  final Widget valueBottom1;
  final Widget valueBottom2;

  ItemListMarketshare(
      {this.margin,
      this.padding,
      this.onPressed,
      this.elevation,
      this.backgroundColor,
      this.textColor,
      this.borderHeaderColor,
      this.bgHeaderColor,
      this.borderHeader = false,
      this.headerTitle = "header title",
      this.headerLeading,
      this.headerTrailing,
      this.borderRadius = 0.0,
      this.label1,
      this.label2,
      this.label3,
      this.label4,
      this.label5,
      this.label6,
      this.labelBottom1 = "",
      this.labelBottom2 = "",
      this.value1 = "value1",
      this.value2 = "value2",
      this.value3 = "value3",
      this.value4,
      this.value5,
      this.value6,
      this.valueBottom1,
      this.valueBottom2});

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
            child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                          bottom: 5.0, top: 10.0, right: 10.0, left: 10.0),
                      margin: EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Text(
                                headerTitle,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                          Expanded(
                              flex: 0, child: headerTrailing ?? SizedBox()),
                        ],
                      ),
                      decoration: borderHeader
                          ? BoxDecoration(
                              color: bgHeaderColor,
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5,
                                      color: borderHeaderColor ??
                                          Colors.grey[400])))
                          : BoxDecoration(color: bgHeaderColor),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 3.0),
                                    child: label1,
                                  ),
                                  Text(
                                    "$value1",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        color: textColor ?? Colors.blue[700]),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 3.0),
                                    child: label2,
                                  ),
                                  Text(
                                    "$value2",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        color: textColor ?? Colors.grey[900]),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 3.0),
                                    child: label3,
                                  ),
                                  Text(
                                    "$value3",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        color: textColor ?? Colors.grey[900]),
                                  ),
                                ],
                              ),
                            ],
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
                                    child: label4,
                                  ),
                                  value4,
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 3.0),
                                    child: label5,
                                  ),
                                  value5,
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 3.0),
                                    child: label6,
                                  ),
                                  value6,
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0, bottom: 15.0),
                      child: LineDash(
                        height: 1.0,
                        color: Colors.blue[300],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10.0, right: 10.0, bottom: 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(bottom: 5.0),
                                child: Text(
                                  labelBottom1,
                                  style: TextStyle(
                                      color: textColor ?? Colors.red,
                                      fontSize: 13.0),
                                ),
                              ),
                              valueBottom1
//                              Text(
//                                valueBottom1,
//                                style: TextStyle(
//                                    fontSize: 20.0,
//                                    color: textColor ?? Colors.grey[900],
//                                    fontWeight: FontWeight.bold),
//                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(bottom: 5.0),
                                child: Text(
                                  labelBottom2,
                                  style: TextStyle(
                                      color: textColor ?? Colors.red,
                                      fontSize: 13.0),
                                ),
                              ),
                              valueBottom2,
                            ],
                          ),
                        ],
                      ),
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
