import 'package:flutter/material.dart';

class ExapnsionTileDrawer extends StatelessWidget {
  final Widget leading;
  final Widget title;
  final bool initiallyExpanded;
  final Widget trailing;
  final Color backgroundColor;
  final Key key;
  final double paddingChildren;
  final Function onExpansionChanged;
  final Function onLeadingTap;
  final List<Widget> children;

  ExapnsionTileDrawer(
      {this.leading,
        @required this.title,
        this.initiallyExpanded=false,
        this.backgroundColor,
        this.trailing,
        this.key,
        this.paddingChildren=0.0,
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: leading,
          ),
          title
        ],
      ),
      children: children.map((widget){
        return Padding(padding: EdgeInsets.only(left: paddingChildren), child: widget,);
      }).toList(),
    );
  }
}
