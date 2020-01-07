import 'package:flutter/material.dart';

class ItemListSimple extends StatelessWidget {
  final Widget text;
  final Function onPressed;
  final Widget leading;
  final bool border;
  final Widget trailing;
  final EdgeInsets padding;

  ItemListSimple({
    Key key,
    this.text,
    this.onPressed,
    this.leading,
    this.border=true,
    this.trailing,
    this.padding,
  }) : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: padding ??
        EdgeInsets.only(top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            leading ?? SizedBox(),
            Expanded(
                child: Container(
                    padding: EdgeInsets.only(left: 15.0, right: 15.0),
                    child: text)),
            trailing ?? SizedBox(),
          ],
        ),
        decoration: border ? BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.0, color: Colors.grey[300]),
          ),
        ) : BoxDecoration(),
      ),
      onTap: onPressed,
    );
  }
}