import 'package:flutter/material.dart';
import 'package:gkperson_new_flutter/common/style/sup_style.dart';

class SupCardItem extends StatelessWidget {
  final Widget child;
  final EdgeInsets margin;
  final Color color;
  final RoundedRectangleBorder shape;
  final double elevation;

  SupCardItem({
    @required this.child,
    this.margin,
    this.color,
    this.shape,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    EdgeInsets margin = this.margin;
    RoundedRectangleBorder shape = this.shape;
    Color color = this.color;
    margin ??= EdgeInsets.only(
      left: 10,
      top: 10,
      right: 10,
      bottom: 10,
    );
    shape ??= RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)));
    color ??= SupColors.COLOR_CARD_WHITE;
    return Card(
      elevation: elevation,
      shape: shape,
      color: color,
      margin: margin,
      child: child,
    );
  }
}
