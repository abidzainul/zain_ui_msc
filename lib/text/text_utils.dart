import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String text;
  const TextTitle({
    this.text,
  }) : assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
    );
  }
}

class TextWhite extends StatelessWidget {
  final String text;
  const TextWhite({
    this.text,
  }) : assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 14.0, color: Colors.white),
    );
  }
}

class TextTitleItemList extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  const TextTitleItemList({
    this.text,
    this.size,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(this.text ?? "",
        style: TextStyle(
            fontSize: size != null ? size : 16.0,
            fontWeight: fontWeight ?? FontWeight.normal),
        overflow: TextOverflow.ellipsis,
        maxLines: 2);
  }
}

class TextSubtitleItemList extends StatelessWidget {
  final String text;
  final double size;
  const TextSubtitleItemList({
    this.text,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text ?? "",
      style: TextStyle(
          color: Colors.grey[700], fontSize: size != null ? size : 14.0),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}

class TextPriceStringItemList extends StatelessWidget {
  final String text;
  final TextDecoration textDecoration;
  final Color color;
  const TextPriceStringItemList({
    this.text,
    this.textDecoration,
    this.color,
  }) : assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? Colors.orange[700],
          fontWeight: FontWeight.bold,
          decoration: textDecoration),
    );
  }
}

class TextDefault extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final Color color;
  const TextDefault({
    this.text,
    this.fontSize,
    this.textAlign,
    this.fontWeight,
    this.color,
  }) : assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
          fontSize: fontSize ?? 14.0,
          fontWeight: fontWeight ?? FontWeight.normal,
          color: color ?? Colors.black),
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}

class TextSpanColor extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final FontWeight fontWeight;
  final double fontSize;
  final double width;
  final double height;
  final EdgeInsets padding;
  const TextSpanColor({
    this.text,
    this.textColor,
    this.backgroundColor,
    this.fontWeight,
    this.width,
    this.height,
    this.fontSize,
    this.padding,
  }) : assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding ?? EdgeInsets.only(left: 5.0, right: 5.0, top: 1.0, bottom: 1.0),
      child: Center(
        child: Text(text ?? "",
            style: TextStyle(
                fontSize: fontSize ?? 12.0,
                color: textColor ?? Colors.white,
                fontWeight: fontWeight ?? FontWeight.normal)),
      ),
      decoration: BoxDecoration(
          color: backgroundColor ?? Colors.grey,
          borderRadius: BorderRadius.all(const Radius.circular(30.0))),
    );
  }
}

class TextGroupItemNavDrawer extends StatelessWidget {
  final String text;

  TextGroupItemNavDrawer({
    Key key,
    this.text,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0),
        child: Text(
          text ?? "title",
          style: TextStyle(color: Colors.grey[700]),
        ));
  }
}
