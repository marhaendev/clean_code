import 'package:flutter/material.dart';

var elevatedNoRadius = ElevatedButton.styleFrom(shape: noRadius);
Widget sy(double i) => SizedBox(
      height: i,
    );
Widget sx(double i) => SizedBox(
      width: i,
    );
radius(double i) =>
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(i));
var noRadius = radius(0);

EdgeInsets edge(double top, [double? right, double? bottom, double? left]) {
  if (right == null && bottom == null && left == null) {
    return EdgeInsets.all(top);
  } else if (bottom == null && left == null) {
    return EdgeInsets.symmetric(vertical: top, horizontal: right!);
  } else {
    return EdgeInsets.only(
        top: top,
        right: right ?? top,
        bottom: bottom ?? top,
        left: left ?? right ?? top);
  }
}

var noEdge = edge(0);
var noPadding = edge(0);
var noMargin = edge(0);
