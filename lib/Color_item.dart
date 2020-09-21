import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ColorItem extends StatefulWidget {
  bool isSelected;
  final int index;
  final Color backgroundColor;
  final double boxWidth;
  final double boxRadius;
  final double horizontalPadding;

  ColorItem({
    this.backgroundColor,
    this.isSelected = false,
    this.boxWidth = 50,
    this.boxRadius = 5,
    this.horizontalPadding = 3,
    @required this.index,
  });
  myExport() => createState().export();
  @override
  _ColorItemState createState() => _ColorItemState();
}

class _ColorItemState extends State<ColorItem> {
  bool export() {
    //TODO BLOC ÖĞRENİLECEK
    return widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.horizontalPadding),
      child: GestureDetector(
        onTap: () {
          setState(() {
            widget.isSelected = !widget.isSelected;
          });
        },
        child: Container(
          width: widget.boxWidth,
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(widget.boxRadius),
          ),
          child: Icon(
            Icons.check,
            color: widget.isSelected ? Colors.white : widget.backgroundColor,
          ),
        ),
      ),
    );
  }
}
