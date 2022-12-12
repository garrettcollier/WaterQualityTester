import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:water_quality_app/results.dart';
import 'package:water_quality_app/rgb_generator.dart';

// RGB class storing all RGB information from image file
class RGBImageCheckPage extends StatefulWidget {
  // image from camera
  final File image;

  const RGBImageCheckPage({super.key, required this.image});

  @override
  _RGBImageCheckPageState createState() => _RGBImageCheckPageState();
}

// number of colors from image
int noOfPaletteColors = 16;

class _RGBImageCheckPageState extends State<RGBImageCheckPage> {
  // lists for colors, sorted colors, and palette of colors
  List<Color> allColors = [];
  List<Color> sortedColors = [];
  List<Color> testColors = [];
  List<Color> palette = [];

  Color primary = Colors.blueGrey;
  Color primaryText = Colors.black;
  Color background = Colors.white;

  // image bytes
  Uint8List? imageBytes;

  // style the elevated buttons
  final ButtonStyle styleButton = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20), backgroundColor: Colors.teal);

  @override
  void initState() {
    super.initState();
    extractColors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // See results from image
            ElevatedButton(
              style: styleButton,
              child: const Text("View Results"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(testColors: testColors),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),

            // get color grid
            _getColorGrid(),
          ],
        ),
      ),
    );
  }

  // get all colors from image
  Future<void> extractColors() async {
    // initial colors, sorted colors, palette, and image bytes
    allColors = [];
    sortedColors = [];
    palette = [];
    imageBytes = null;

    setState(() {});

    // number of palette colors
    noOfPaletteColors = 16;

    // get image bytes and extract colors, sort, and generate the palette
    imageBytes = await widget.image.readAsBytes();
    allColors = await compute(extractPixelsColors, imageBytes);

    // get just the water test kit colors for each row
    testColors = getSingleColumnFromListIndex(
        allColors, getLighestColorIndex(allColors));

    setState(() {});
    sortedColors = await compute(sortColors, allColors);
    setState(() {});
    palette = await compute(generatePalette,
        {keyPalette: allColors, keyNoOfItems: noOfPaletteColors});
    primary = palette.last;
    primaryText = palette.first;
    setState(() {});
  }

// displays grid of all pixels from image
  Widget _getColorGrid() {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: allColors.isEmpty
                ? Container(
                    alignment: Alignment.center,
                    height: 200,
                    child: const CircularProgressIndicator(),
                  )
                : Column(
                    children: [
                      const SizedBox(height: 10),
                      GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: noOfPixelsPerAxis),
                        itemCount: allColors.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            alignment: Alignment.center,
                            width: 25,
                            child: Container(
                              color: allColors[index],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
