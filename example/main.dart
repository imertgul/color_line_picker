import 'package:flutter/material.dart';
import 'package:color_line_picker/color_line_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedColorIndexOne;
  int _selectedColorIndexTwo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColorLinePicker(
            widgetHeigh: 100,
            colorBoxWidth: 75,
            colorBoxRadius: 25,
            colorBoxPaddingHorizontal: 1,
            onColorSelected: (index) {
              setState(() {
                _selectedColorIndexOne = index;
              });
            },
            children: [
              Colors.red,
              Colors.amber,
              Colors.black,
              Colors.blue,
              Colors.cyan,
              Colors.green,
              Colors.red,
              Colors.amber,
              Colors.black,
              Colors.blue,
              Colors.cyan,
              Colors.green,
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Selected color index is: $_selectedColorIndexOne"),
          ),
          ColorLinePicker(
            widgetHeigh: 50,
            colorBoxWidth: 50,
            colorBoxRadius: 5,
            colorBoxPaddingHorizontal: 5,
            myIcon: Icons.accessibility,
            myIconColor: Colors.black,
            onColorSelected: (index) {
              setState(() {
                _selectedColorIndexTwo = index;
              });
            },
            children: [
              Colors.red,
              Colors.amber,
              Colors.black,
              Colors.blue,
              Colors.cyan,
              Colors.green,
              Colors.red,
              Colors.amber,
              Colors.black,
              Colors.blue,
              Colors.cyan,
              Colors.green,
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Selected color index is: $_selectedColorIndexTwo"),
          ),
        ],
      ),
    );
  }
}
