import 'package:flutter/material.dart';

class ItemButtonFilterTop extends StatelessWidget {
  final String text;
  final Function onPressed;

  ItemButtonFilterTop({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding:
        EdgeInsets.only(left: 25.0, right: 25.0, top: 8.0, bottom: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(fontSize: 12.0),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Icon(
                Icons.unfold_more,
                size: 16.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ButtonFilterTop extends StatelessWidget {
  final List<Widget> children;
  final Alignment alignment;
  final Color background;
  final double paddingTop;
  final double paddingBottom;
  final Widget devider = Container(
    color: Colors.grey[700],
    width: 1.0,
    height: 20.0,
  );

  ButtonFilterTop(
      {@required this.children,
        this.alignment = Alignment.center,
        this.background,
        this.paddingBottom=10.0,
        this.paddingTop=10.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      width: double.infinity,
      height: 40 + paddingTop + paddingBottom,
      child: Align(
        alignment: alignment,
        child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 6.0,
                  child: Row(
                      children: children
                          .asMap()
                          .map((i, widget) {
                        if (children.length <= 0) {
                          return MapEntry(i,
                              ItemButtonFilterTop(text: "child required"));
                        } else if (children.length == 1) {
                          return MapEntry(i, widget);
                        } else {
                          if (children.length != i + 1) {
                            return MapEntry(
                                i,
                                Row(
                                  children: <Widget>[widget, devider],
                                ));
                          } else {
                            return MapEntry(i, widget);
                          }
                        }
                      })
                          .values
                          .toList()),
                ),
              )
            ]),
      ),
    );
  }
}
