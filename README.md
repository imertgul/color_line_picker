# color_line_picker
This package helps you to create color palette as horizontal list. Able to detech which color picked and returns it.

## Install

### 1. Depend on it
Add this to your package's pubspec.yaml file:

```yaml
dependencies:
	color_line_picker:: <CurrentVersion>
```

### 2. Install it

You can install packages from the command line:  

with Flutter:
 

```shell
$ flutter pub get
```

Alternatively, your editor might support `flutter pub get`. Check the docs for your editor to learn more.

### 3. Import it

Now in your Dart code, you can use:

```dart
import  'package:color_line_picker/color_line_picker.dart';
```

## Example

  
```dart
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
   ],
 ),
```
  
And you can print like:
 ```dart
 Text("Selected color index is: $_selectedColorIndexTwo")
 ```
