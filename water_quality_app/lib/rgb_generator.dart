import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as image_library;

// palette key and number of items
const String keyPalette = 'palette';
const String keyNoOfItems = 'noIfItems';

// number of pixels for grid row
int noOfPixelsPerAxis = 16;

// get the average color for Color list
Color getAverageColor(List<Color> colors) {
  int r = 0, g = 0, b = 0;

  for (int i = 0; i < colors.length; i++) {
    r += colors[i].red;
    g += colors[i].green;
    b += colors[i].blue;
  }

  r = r ~/ colors.length;
  g = g ~/ colors.length;
  b = b ~/ colors.length;

  return Color.fromRGBO(r, g, b, 1);
}

// get lighest color index for Color list
int getLighestColorIndex(List<Color> colors) {
  // check the first 20 colors for the lightest color
  for (int i = 0; i < 20; i++) {
    if ((colors[i].red >= 100) ||
        (colors[i].green >= 100) ||
        (colors[i].blue >= 100)) {
      return i;
    }
  }
  // should add a check to rerun the test by reseting camera potentially
  print("No light color found!");
  return 0;
}

// pick single column from Color list
List<Color> getSingleColumnFromListIndex(List<Color> colors, int index) {
  // new return list
  List<Color> newList = [];
  // get every nth element in the list (represents the column)
  for (int i = index; i < colors.length; i += index) {
    newList.add(colors[i]);
    print(colors[i]);
  }
  print(newList);
  return newList;
}

// translate RGB to actual color
Color abgrToColor(int argbColor) {
  int r = (argbColor >> 16) & 0xFF;
  int b = argbColor & 0xFF;
  int hex = (argbColor & 0xFF00FF00) | (b << 16) | r;
  return Color(hex);
}

// sort the colors
List<Color> sortColors(List<Color> colors) {
  List<Color> sorted = [];

  sorted.addAll(colors);
  sorted.sort((a, b) => b.computeLuminance().compareTo(a.computeLuminance()));

  return sorted;
}

// create the palette of colors from image
List<Color> generatePalette(Map<String, dynamic> params) {
  List<Color> colors = [];
  List<Color> palette = [];

  colors.addAll(sortColors(params[keyPalette]));

  int noOfItems = params[keyNoOfItems];

  if (noOfItems <= colors.length) {
    int chunkSize = colors.length ~/ noOfItems;

    for (int i = 0; i < noOfItems; i++) {
      palette.add(
          getAverageColor(colors.sublist(i * chunkSize, (i + 1) * chunkSize)));
    }
  }

  return palette;
}

// Show Dr. Ferrer
// get all the colors from the pixels of the image
List<Color> extractPixelsColors(Uint8List? bytes) {
  // list of colors and pixels
  List<Color> colors = [];
  List<int?> pixels = [];

  List<int> values = bytes!.buffer.asUint8List();
  image_library.Image? image = image_library.decodeImage(values);

  // get image width and height
  int? width = image?.width;
  int? height = image?.height;

  int xChunk = width! ~/ (noOfPixelsPerAxis + 1);
  int yChunk = height! ~/ (noOfPixelsPerAxis + 1);

  for (int j = 1; j < noOfPixelsPerAxis + 1; j++) {
    for (int i = 1; i < noOfPixelsPerAxis + 1; i++) {
      int? pixel = image?.getPixel(xChunk * i, yChunk * j);
      pixels.add(pixel);
      colors.add(abgrToColor(pixel!));
    }
  }

  // return all the colors from image
  return colors;
}

//square am i on
//row in square
// column in square