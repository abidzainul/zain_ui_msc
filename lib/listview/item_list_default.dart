import 'package:flutter/material.dart';

class ItemListDefault extends StatelessWidget {
  final Widget title;
  final Widget subtitle;
  final bool devider;
  final Color deviderColor;
  final Color backgroundColor;
  final Function onPressed;
  final Widget leading;
  final double paddingLeading;
  final double paddingTrailing;
  final Widget trailing;
  final EdgeInsets padding;

  ItemListDefault({
    Key key,
    this.title,
    this.subtitle,
    this.devider=false,
    this.deviderColor,
    this.backgroundColor,
    this.onPressed,
    this.leading,
    this.trailing,
    this.paddingLeading,
    this.paddingTrailing,
    this.padding,
  }) : super(
          key: key,
        );

  EdgeInsets setPadding(EdgeInsets padding) {
    if (padding == null) {
      return EdgeInsets.only(top: 10.0, bottom: 10.0, left: 15.0, right: 15.0);
    } else {
      return EdgeInsets.only(
          top: (padding.top != 0 ? padding.top : 10.0),
          bottom: (padding.bottom != 0 ? padding.bottom : 10.0),
          left: (padding.left != 0 ? padding.left : 15.0),
          right: (padding.right != 0 ? padding.right : 15.0));
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: setPadding(padding),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            leading ?? SizedBox(),
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(
                        left: paddingLeading ?? 15.0,
                        right: paddingTrailing ?? 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        title ?? SizedBox(),
                        subtitle ?? SizedBox()
                      ],
                    ))),
            trailing ?? SizedBox(),
          ],
        ),
        decoration: devider
            ? BoxDecoration(
                color: backgroundColor,
                border: Border(
                  bottom: BorderSide(
                      width: 1.0, color: deviderColor ?? Colors.grey[300]),
                ),
              )
            : BoxDecoration(
                color: backgroundColor,
              ),
      ),
      onTap: onPressed,
    );
  }
}
