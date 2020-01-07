import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final Widget child;
  Widget childBottom;
  Function onPressed;
  double paddingText;
  double elevation;
  double padding;

  CardButton({
    Key key,
    this.child,
    this.childBottom,
    this.onPressed,
    this.elevation,
    this.paddingText,
    this.padding,
  })  : assert(child != null),
        super(
        key: key,
      );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        elevation: elevation ?? 10.0,
        child: Container(
          padding: EdgeInsets.all(padding ?? 10.0),
          child: Column(
            children: <Widget>[
              child,
              SizedBox(
                height: paddingText ?? 0.0,
              ),
              childBottom
            ],
          ),
        ),
      ),
    );
  }
}