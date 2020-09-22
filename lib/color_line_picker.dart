import 'package:flutter/material.dart';
import 'Color_item.dart';

typedef OnColorSelected = void Function(int);

class ColorLinePicker extends StatefulWidget {
  final double widgetHeigh;
  final double colorBoxWidth;
  final double colorBoxPaddingHorizontal;
  final double colorBoxRadius;
  final IconData myIcon;
  final Color myIconColor;
  final OnColorSelected onColorSelected;
  final List<Color> children;

  const ColorLinePicker({
    @required this.widgetHeigh,
    @required this.onColorSelected,
    this.myIcon = Icons.check,
    this.myIconColor = Colors.white,
    this.colorBoxWidth = 50,
    @required this.children,
    this.colorBoxRadius = 5,
    this.colorBoxPaddingHorizontal = 3,
  });
  @override
  _ColorLinePickerState createState() => _ColorLinePickerState();
}

class _ColorLinePickerState extends State<ColorLinePicker> {
  List<ColorItem> boxList = List<ColorItem>();

  _exportIndex(int index) {
    widget.onColorSelected(index);
    setState(() {
      for (var i = 0; i < boxList.length; i++) {
        if (i != index) boxList[i].isSelected = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.widgetHeigh,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.children.length,
        itemBuilder: (BuildContext context, int index) {
          boxList.add(new ColorItem(
            onSelected: (index) => _exportIndex(index),
            index: index,
            backgroundColor: widget.children[index],
            boxWidth: widget.colorBoxWidth,
            boxRadius: widget.colorBoxRadius,
            horizontalPadding: widget.colorBoxPaddingHorizontal,
          ));
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: boxList[index].horizontalPadding),
            child: GestureDetector(
              onTap: () {
                boxList[index].onSelected(boxList[index].index);
                setState(() {
                  boxList[index].isSelected = !boxList[index].isSelected;
                });
              },
              child: Container(
                width: boxList[index].boxWidth,
                decoration: BoxDecoration(
                  color: boxList[index].backgroundColor,
                  borderRadius: BorderRadius.circular(boxList[index].boxRadius),
                ),
                child: Icon(
                  widget.myIcon,
                  color: boxList[index].isSelected
                      ? widget.myIconColor
                      : boxList[index].backgroundColor,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
