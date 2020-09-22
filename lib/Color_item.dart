import 'package:flutter/material.dart';

typedef OnSelected = void Function(int);

class ColorItem extends StatefulWidget {
  bool isSelected;
  final int index;
  final Color backgroundColor;
  final double boxWidth;
  final double boxRadius;
  final double horizontalPadding;
  final OnSelected onSelected;

  ColorItem({
    Key key,
    this.backgroundColor,
    @required this.onSelected,
    this.isSelected = false,
    this.boxWidth = 50,
    this.boxRadius = 5,
    this.horizontalPadding = 3,
    @required this.index,
  }) : super(key: key);

  @override
  _ColorItemState createState() => _ColorItemState();
}

class _ColorItemState extends State<ColorItem> {
  void resetState() {
    setState(() {
      widget.isSelected = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
