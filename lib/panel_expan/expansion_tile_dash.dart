import 'package:flutter/material.dart';

class ExapnsionTileDash extends StatelessWidget {
  final Widget leading;
  final String title;
  final String subtitle;
  final bool initiallyExpanded;
  final Widget trailing;
  final Color backgroundColor;
  final Key key;
  final Function onExpansionChanged;
  final Function onLeadingTap;
  final List<Widget> children;

  ExapnsionTileDash(
      {this.leading,
      this.title = "",
      this.subtitle = "",
      this.initiallyExpanded=false,
      this.backgroundColor,
      this.trailing,
      this.key,
      this.onExpansionChanged,
      this.onLeadingTap,
      this.children});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      backgroundColor: backgroundColor,
      trailing: trailing,
      key: key,
      onExpansionChanged: onExpansionChanged,
      initiallyExpanded: initiallyExpanded,
      title: Row(
        children: <Widget>[
          InkWell(
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: leading,
            ),
            onTap: onLeadingTap,
          ),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                    text: title,
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: ' | ', style: TextStyle(color: Colors.grey[700])),
                TextSpan(
                    text: subtitle, style: TextStyle(color: Colors.grey[700])),
              ],
            ),
          )
        ],
      ),
      children: children,
    );
  }
}
