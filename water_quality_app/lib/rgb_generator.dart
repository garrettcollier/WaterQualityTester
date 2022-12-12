import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as image_library;

// palette key and number of items
const String keyPalette = 'palette';
const String keyNoOfItems = 'noIfItems';

// number of pixels per grid row
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
  // checks middle of screen colors for the lightest color
  for (int i = 6; i < 9; i++) {
    if ((colors[i].red >= 150) ||
        (colors[i].green >= 150) ||
        (colors[i].blue >= 150)) {
      return i;
    }
  }
  // should add a check to rerun the test by reseting camera potentially
  print("No light color found!");
  return 0;
}

// get image bytes and extract average color
Future<Color> extractAverageSampleColor(File image) async {
  var imageSampleBytes = await image.readAsBytes();
  var sampleColors = await compute(extractPixelsColors, imageSampleBytes);
  return getAverageColor(sampleColors);
}

// compare two colors and give a percentage of match
double compareColors(Color c1, Color c2) {
  // get RBG abs value differences
  int diffRed = (c1.red - c2.red).abs();
  int diffGreen = (c1.green - c2.green).abs();
  int diffBlue = (c1.blue - c2.blue).abs();

  // divide by total saturation
  double pctDiffRed = diffRed / 255;
  double pctDiffGreen = diffGreen / 255;
  double pctDiffBlue = diffBlue / 255;

  // find average color difference
  return (pctDiffRed + pctDiffGreen + pctDiffBlue) / 3 * 100;
}
// compare image file colors in assets directory to the test color from camera
Future<String?> compareTestToSampleToGetValue(
    String assetColorsFilePath, Color testColor) async {
  // map of percentage color difference and color value for flag checks
  Map<double, String> colorDiffs = {};

  // get files from directory
  bool directoryExists = await Directory(assetColorsFilePath).exists();

  if (directoryExists) {
    List files = Directory(assetColorsFilePath).listSync();
    int numFiles = files.length;

    for (int i = 0; i < numFiles; i++) {
      // define color file and average color
      File colorFile = File('${files[i]}');
      Color averageColorFromFile =
          extractAverageSampleColor(colorFile) as Color;

      // compare file color with given image color
      double diff = compareColors(averageColorFromFile, testColor);
      colorDiffs[diff] = '${files[i]}'; //.split('_')[1]
    }
  }

  // get the keys and sort
  List<double> colorDiffKeyDoubles = colorDiffs.keys as List<double>;
  colorDiffKeyDoubles.sort();

  // return largest percentage match color file name
  return colorDiffs[colorDiffKeyDoubles.last];
}

// pick single column from Color list
List<Color> getSingleColumnFromListIndex(List<Color> colors, int index) {
  // new return list
  List<Color> newList = [];
  // get every nth element in the list (represents the column)
  for (int i = index; i < colors.length; i += 16) {
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
