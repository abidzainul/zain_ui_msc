import 'package:flutter/material.dart';

class ItemListResumeNew extends StatelessWidget {
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Function onPressed;
  final Color backgroundColor;
  final bool borderHeader;
  final String headerTitle;
  final Widget headerLeading;
  final Widget headerTrailing;
  final double borderRadius;
  final double elevation;
  final String label1;
  final String label2;
  final String label3;
  final String value1;
  final String value2;
  final String value3;
  final String trailing;

  ItemListResumeNew(
      {this.margin,
        this.padding,
        this.onPressed,
        this.elevation,
        this.backgroundColor,
        this.borderHeader = false,
        this.headerTitle = "header title",
        this.headerLeading,
        this.headerTrailing,
        this.borderRadius = 0.0,
        this.label1 = "label1",
        this.label2 = "label2",
        this.label3 = "label3",
        this.value1 = "value1",
        this.value2 = "value2",
        this.value3 = "value3",
        this.trailing});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        elevation: elevation ?? 6.0,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 2.0),
        ),
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
                                color: Colors.grey[900]),
                          )),
                      Expanded(flex: 0, child: headerTrailing ?? SizedBox()),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 3.0, bottom: 20.0),
                    decoration: borderHeader
                        ? BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 0.5, color: Colors.grey[400])))
                        : null,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    margin: EdgeInsets.only(
                        bottom: 15.0,
                        left: MediaQuery.of(context).size.width / 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Text(
                            label1,
                            style: TextStyle(
                                color: Colors.grey[900], fontSize: 14.0),
                          ),
                        ),
                        Text(
                          value1,
                          style: TextStyle(
                              fontSize: 24.0, color: Colors.grey[900]),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
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
                                    color: Colors.grey[700], fontSize: 12.0),
                              ),
                            ),
                            Text(
                              value2,
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.grey[900]),
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
                                    color: Colors.grey[700], fontSize: 12.0),
                              ),
                            ),
                            Text(
                              value3,
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.grey[900]),
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
                top: 0.0,
                bottom: 0.0,
                right: 0.0,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        trailing,
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[900]),
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.blue,
                          width: 4,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(borderRadius)),
        ),
      ),
    );
  }
}
