import 'package:flutter/material.dart';

class ButtonMaxWidth extends StatelessWidget {
  final Function onPressed;
  final Color color;
  final bool bold;
  final String text;
  final Color textColor;
  final double elevation;
  final double borderRadius;
  final double textSize;

  ButtonMaxWidth({
    Key key,
    this.onPressed,
    this.color,
    this.bold,
    @required this.text,
    this.textColor,
    this.elevation,
    this.textSize,
    this.borderRadius
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(minWidth: double.infinity),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 2.0),
          ),
          elevation: elevation ?? 6.0,
          color: color ?? Theme.of(context).accentColor,
          child: Text(
            text ?? "SAVE",
            style: TextStyle(
                color: textColor ?? Colors.white,
                fontSize: textSize,
                fontWeight: bold == null || !bold
                    ? FontWeight.normal
                    : FontWeight.bold),
          ),
          padding: EdgeInsets.only(top: 13.0, bottom: 13.0),
          onPressed: onPressed,
        ),);
  }
}