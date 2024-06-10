import 'package:flutter/material.dart';

// Konstanta untuk ElevatedButton tanpa radius
final ButtonStyle elevatedNoRadius = ElevatedButton.styleFrom(shape: noRadius);

// Fungsi untuk SizedBox dengan height
Widget sy(double height) => SizedBox(height: height);

// Fungsi untuk SizedBox dengan width
Widget sx(double width) => SizedBox(width: width);

// Fungsi untuk membuat RoundedRectangleBorder dengan border radius
RoundedRectangleBorder radius(double radius) => RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
    );

// Konstanta untuk noRadius
const RoundedRectangleBorder noRadius = RoundedRectangleBorder(
  borderRadius: BorderRadius.zero,
);

// Fungsi untuk EdgeInsets
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
      left: left ?? right ?? top,
    );
  }
}

// Konstanta untuk noEdge, noPadding, dan noMargin
const EdgeInsets noEdge = EdgeInsets.all(0);
const EdgeInsets noPadding = EdgeInsets.all(0);
const EdgeInsets noMargin = EdgeInsets.all(0);
