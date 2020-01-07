import 'package:flutter/material.dart';

class TableContainer extends StatelessWidget {
  final double elevetaion;
  final double borderRadius;
  final double width;
  final double height;
  final String title;
  final String subtitle;
  final Widget child;
  final bool expandChild;

  TableContainer(
      {this.elevetaion,
      this.borderRadius,
      this.width,
      this.height,
      this.title,
      this.subtitle,
      this.child,
      this.expandChild = true});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevetaion ?? 6.0,
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 5.0),
      ),
      child: Container(
        width: width,
        height: height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              (title==null && subtitle==null) ? SizedBox() : Container(
              padding: EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0, bottom: 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  title != null
                      ? Text(
                          title,
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        )
                      : SizedBox(),
                  subtitle != null
                      ? Text(
                          subtitle,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            ),
            expandChild
                ? Expanded(
                    child: child,
                  )
                : child,
          ],
        ),
      ),
    );
  }
}

class TextTitleTable extends StatelessWidget {
  final String text;
  final double fontSize;
  final double cellPaddingLeft;
  final EdgeInsets padding;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final Color color;
  final Color cellColor;
  final BorderSide borderBottom;
  final BorderSide borderTop;

  TextTitleTable(this.text,{
    this.fontSize,
    this.cellPaddingLeft,
    this.padding,
    this.textAlign,
    this.fontWeight,
    this.color,
    this.cellColor,
    this.borderBottom,
    this.borderTop,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding ?? EdgeInsets.only(left: cellPaddingLeft ?? 0.0, top: 11.5, bottom: 11.5),
        child: Text(
          text,
          style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight ?? FontWeight.bold,
              color: color ?? Colors.grey[900]),
          textAlign: textAlign ?? TextAlign.start,
        ),
        decoration: BoxDecoration(
            color: cellColor,
            border: Border()
        )
    );
  }
}

class TextCellTable extends StatelessWidget {
  final String text;
  final bool widthInfinity;
  final double fontSize;
  final double cellPaddingLeft;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final Color color;
  final Color cellColor;
  final BorderSide borderBottom;
  final BorderSide borderTop;

  TextCellTable(this.text,{
    this.fontSize,
    this.cellPaddingLeft,
    this.widthInfinity=true,
    this.textAlign,
    this.fontWeight,
    this.color,
    this.cellColor,
    this.borderBottom,
    this.borderTop,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthInfinity ? double.infinity : null,
      padding: EdgeInsets.only(left: cellPaddingLeft ?? 0.0, top: 12.0, bottom: 11.5),
      child: Text(
        text ?? '',
          style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight ?? FontWeight.normal,
              color: color ?? Colors.grey[900]),
          textAlign: textAlign ?? TextAlign.start,
      ),
      decoration: BoxDecoration(
        color: cellColor,
          border: Border()
      )
    );
  }
}


class IconCellTable extends StatelessWidget {
  final IconData icon;
  final bool widthInfinity;
  final double size;
  final double cellPaddingLeft;
  final TextAlign textAlign;
  final Color color;
  final Color cellColor;
  final BorderSide borderBottom;
  final BorderSide borderTop;

  IconCellTable(this.icon,{
    this.size,
    this.cellPaddingLeft,
    this.widthInfinity=true,
    this.textAlign,
    this.color,
    this.cellColor,
    this.borderBottom,
    this.borderTop,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: cellPaddingLeft ?? 0.0, top: 7.0, bottom: 7.0),
        child: Icon(
          icon,
          color: color,
          size: size,
        ),
        decoration: BoxDecoration(
            color: cellColor,
            border: Border()
        )
    );
  }
}

