import 'package:flutter/material.dart';

class ItemListResume extends StatelessWidget {
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Function onPressed;
  final Color backgroundColor;
  final Color textColor;
  final bool borderHeader;
  final Color borderHeaderColor;
  final Color bgHeaderColor;
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
  final Color colorValue1;
  final Color colorValue2;
  final Color colorValue3;
  final String labelBottom1;
  final String labelBottom2;
  final String valueBottom1a;
  final Color colorValueBottom1a;
  final String valueBottom1b;
  final Color colorValueBottom1b;
  final String valueBottom2a;
  final Color colorValueBottom2a;
  final String valueBottom2b;
  final Color colorValueBottom2b;

  ItemListResume(
      {this.margin,
      this.padding,
      this.onPressed,
      this.elevation,
      this.backgroundColor,
      this.textColor,
      this.borderHeaderColor,
      this.bgHeaderColor,
      this.borderHeader = false,
      this.headerTitle = "header title",
      this.headerLeading,
      this.headerTrailing,
      this.borderRadius = 0.0,
      this.label1 = "label1",
      this.label2 = "label2",
      this.label3 = "label3",
      this.value1 = "1",
      this.value2 = "2",
      this.value3 = "3",
      this.colorValue1,
      this.colorValue2,
      this.colorValue3,
      this.colorValueBottom1a,
      this.colorValueBottom1b,
      this.colorValueBottom2a,
      this.colorValueBottom2b,
      this.labelBottom1 = "labelBottom1",
      this.labelBottom2 = "labelBottom2",
      this.valueBottom1a = "11",
      this.valueBottom1b = "12",
      this.valueBottom2a = "21",
      this.valueBottom2b = "22"});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.only(bottom: 10.0),
      child: Card(
        elevation: elevation ?? 6.0,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 2.0),
        ),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                          bottom: 5.0, top: 10.0, right: 10.0, left: 10.0),
                      margin: EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Text(
                                headerTitle,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                          Expanded(
                              flex: 0, child: headerTrailing ?? SizedBox()),
                        ],
                      ),
                      decoration: borderHeader
                          ? BoxDecoration(
                              color: bgHeaderColor,
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5,
                                      color: borderHeaderColor ??
                                          Colors.grey[400])))
                          : BoxDecoration(color: bgHeaderColor),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(bottom: 3.0),
                                child: Text(
                                  label1,
                                  style: TextStyle(
                                      color: textColor ?? Colors.grey[700],
                                      fontSize: 13.0),
                                ),
                              ),
                              Text(
                                value1,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: colorValue1 ??
                                        (textColor ?? Colors.grey[900])),
                              ),
                            ],
                          )),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(bottom: 3.0),
                                  child: Text(
                                    label2,
                                    style: TextStyle(
                                        color: textColor ?? Colors.grey[700],
                                        fontSize: 13.0),
                                  ),
                                ),
                                Text(
                                  value2,
                                  style: TextStyle(
                                    fontSize: 18.0,
//                                    fontWeight: FontWeight.bold,
                                    color: colorValue2 ??
                                        (textColor ?? Colors.grey[900]),
//                                  shadows: [
//                                    Shadow(
//                                      color: Colors.white,
//                                      blurRadius: 1.0,
//                                      offset: Offset(1.0, 1.0),
//                                    ),
//                                    Shadow(
//                                      color: Colors.white,
//                                      blurRadius: 1.0,
//                                      offset: Offset(-1.0, 1.0),
//                                    ),
//                                    Shadow(
//                                      color: Colors.white,
//                                      blurRadius: 1.0,
//                                      offset: Offset(1.0, -1.0),
//                                    ),
//                                    Shadow(
//                                      color: Colors.white,
//                                      blurRadius: 1.0,
//                                      offset: Offset(-1.0, -1.0),
//                                    ),
//                                  ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(bottom: 3.0),
                                  child: Text(
                                    label3,
                                    style: TextStyle(
                                        color: textColor ?? Colors.grey[700],
                                        fontSize: 13.0),
                                  ),
                                ),
                                Text(
                                  value3,
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: colorValue3 ??
                                          (textColor ?? Colors.grey[900])),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 10.0, right: 10.0, bottom: 10.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 30,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(bottom: 3.0),
                                  child: Text(
                                    labelBottom1,
                                    style: TextStyle(
                                        color: textColor ?? Colors.grey[700],
                                        fontSize: 11.0),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: valueBottom1a,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: colorValueBottom1a ??
                                                  (textColor ??
                                                      Colors.grey[900]))),
                                      TextSpan(
                                          text: valueBottom1b != null
                                              ? ' | '
                                              : '',
                                          style: TextStyle(
                                              color: colorValueBottom1a ??
                                                  (textColor ??
                                                      Colors.grey[900]))),
                                      TextSpan(
                                          text: valueBottom1b,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: colorValueBottom1b ??
                                                  (textColor ??
                                                      Colors.grey[900]))),
                                    ],
                                  ),
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
                                    labelBottom2,
                                    style: TextStyle(
                                        color: textColor ?? Colors.grey[700],
                                        fontSize: 11.0),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: valueBottom2a,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: colorValueBottom2a ??
                                                  (textColor ??
                                                      Colors.grey[900]))),
                                      TextSpan(
                                          text: valueBottom2b != null
                                              ? ' | '
                                              : '',
                                          style: TextStyle(
                                              color: colorValueBottom1a ??
                                                  (textColor ??
                                                      Colors.grey[900]))),
                                      TextSpan(
                                          text: valueBottom2b,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: colorValueBottom2b ??
                                                  (textColor ??
                                                      Colors.grey[900]))),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(flex: 10, child: SizedBox())
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(borderRadius)),
          ),
        ),
      ),
    );
  }
}

class ItemListResumeOld extends StatelessWidget {
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Function onPressed;
  final Color backgroundColor;
  final Color textColor;
  final bool borderHeader;
  final Color borderHeaderColor;
  final String headerTitle;
  final Widget headerLeading;
  final Widget headerTrailing;
  final double borderRadius;
  final double elevation;
  final String label1;
  final String label2;
  final String label3;
  final String label4;
  final String value1;
  final String value2;
  final String value3;
  final String value4;

  ItemListResumeOld(
      {this.margin,
      this.padding,
      this.onPressed,
      this.elevation,
      this.backgroundColor,
      this.textColor,
      this.borderHeaderColor,
      this.borderHeader = false,
      this.headerTitle = "header title",
      this.headerLeading,
      this.headerTrailing,
      this.borderRadius = 0.0,
      this.label1 = "label1",
      this.label2 = "label2",
      this.label3 = "label3",
      this.label4 = "label4",
      this.value1 = "value1",
      this.value2 = "value2",
      this.value3 = "value3",
      this.value4 = "value4"});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.only(bottom: 10.0),
      child: Card(
        elevation: elevation ?? 6.0,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 2.0),
        ),
        child: InkWell(
          onTap: onPressed,
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
                                  color: textColor ?? Colors.grey[900]),
                            )),
                        Expanded(flex: 0, child: headerTrailing ?? SizedBox()),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 3.0, bottom: 10.0),
                      decoration: borderHeader
                          ? BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5,
                                      color: borderHeaderColor ??
                                          Colors.grey[400])))
                          : null,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(bottom: 3.0),
                              child: Text(
                                label1,
                                style: TextStyle(
                                    color: textColor ?? Colors.grey[700],
                                    fontSize: 13.0),
                              ),
                            ),
                            Text(
                              value1,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: textColor ?? Colors.grey[900]),
                            ),
                          ],
                        )),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(bottom: 3.0),
                                child: Text(
                                  label2,
                                  style: TextStyle(
                                      color: textColor ?? Colors.grey[700],
                                      fontSize: 13.0),
                                ),
                              ),
                              Text(
                                value2,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: textColor ?? Colors.grey[900]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
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
                                  label3,
                                  style: TextStyle(
                                      color: textColor ?? Colors.grey[700],
                                      fontSize: 11.0),
                                ),
                              ),
                              Text(
                                value3,
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: textColor ?? Colors.grey[900]),
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
                                  label4,
                                  style: TextStyle(
                                      color: textColor ?? Colors.grey[700],
                                      fontSize: 11.0),
                                ),
                              ),
                              Text(
                                value4,
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: textColor ?? Colors.grey[900]),
                              ),
                            ],
                          ),
                        ),
                        Expanded(flex: 10, child: SizedBox())
                      ],
                    )
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(borderRadius)),
          ),
        ),
      ),
    );
  }
}
