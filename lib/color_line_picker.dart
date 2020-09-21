import 'package:flutter/material.dart';
import 'Color_item.dart';

class ColorLinePicker extends StatefulWidget {
  final double widgetHeigh;
  final double colorBoxWidth;
  final double colorBoxPaddingHorizontal;
  final double colorBoxRadius;
  final List<Color> children;
  final bool canSelectMore;

  const ColorLinePicker({
    this.widgetHeigh,
    this.colorBoxWidth,
    this.children,
    this.colorBoxRadius = 5,
    this.colorBoxPaddingHorizontal = 3,
    this.canSelectMore = false,
  });

  @override
  _ColorLinePickerState createState() => _ColorLinePickerState();
}

class _ColorLinePickerState extends State<ColorLinePicker> {
  List<ColorItem> boxList = List<ColorItem>();

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
            index: index,
            backgroundColor: widget.children[index],
            boxWidth: widget.colorBoxWidth,
            boxRadius: widget.colorBoxRadius,
            horizontalPadding: widget.colorBoxPaddingHorizontal,
          ));
          return boxList[index];
        },
      ),
    );
  }
}

// ColorLinePicker(
//   widgetHeigh: 50,
//   colorBoxWidth: 50,
//   colorBoxRadius: 10,
//   colorBoxPaddingHorizontal: 3,
//   children: [
//     Renkler.dark,
//     Renkler.green,
//     Renkler.primary,
//     Renkler.dark,
//     Renkler.green,
//     Renkler.primary,
//     Renkler.dark,
//     Renkler.green,
//     Renkler.primary,
//   ],
// )
