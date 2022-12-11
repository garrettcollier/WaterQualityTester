import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:water_quality_app/rgb_generator.dart';

// RGB class storing all RGB information from image file
class RGB extends StatefulWidget {
  final File image;

  const RGB({Key? key, required this.image}) : super(key: key);

  @override
  _RGBState createState() => _RGBState();
}

// number of colors from image
int noOfPaletteColors = 16;

class _RGBState extends State<RGB> {
  // lists for colors, sorted colors, and palette of colors
  List<Color> allColors = [];
  List<Color> testColors = [];
  List<Color> sortedColors = [];
  List<Color> palette = [];

  Color primary = Colors.blueGrey;
  Color primaryText = Colors.black;
  Color background = Colors.white;

  // image bytes
  Uint8List? imageBytes;

  @override
  void initState() {
    super.initState();
    extractColors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),

            // get color grid and lightest color column
            _getColorGrid(false),

            // reverse order - white part of strip is at the top
            // 16. total alkalinity
            // compareTestToSample(dir, testColor)
            // 15. sodium chloride
            // compareTestToSample(dir, testColor)
            // 14. fluoride
            // compareTestToSample(dir, testColor)
            // 13. zinc
            // compareTestToSample(dir, testColor)
            // 12. sulfate
            // compareTestToSample(dir, testColor)
            // 11. nitrite
            // compareTestToSample(dir, testColor)
            // 10. nitrate
            // compareTestToSample(dir, testColor)
            // 9. free chlorine
            // compareTestToSample(dir, testColor)
            // 8. total chlorine
            // compareTestToSample(dir, testColor)
            // 7. manganese
            // compareTestToSample(dir, testColor)
            // 6. lead
            // compareTestToSample(dir, testColor)
            // 5. copper
            // compareTestToSample(dir, testColor)
            // 4. iron
            // compareTestToSample(dir, testColor)
            // 3. hydrogen sulfide
            // compareTestToSample(dir, testColor)
            // 2. hardness
            // compareTestToSample(dir, testColor)
            // 1. pH
            // compareTestToSample(dir, testColor)

            // buttons for adding your location to
            // the map and returning to home page
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

    // get just the water test kit colors
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
  Widget _getColorGrid(bool allColorsBool) {
    var colors = [];
    var titleText = "";
    if (allColorsBool) {
      colors = allColors;
      titleText = "Colors from Picture";
    } else {
      colors = testColors;
      titleText = "Test Kit Colors";
    }
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: colors.isEmpty
                ? Container(
                    alignment: Alignment.center,
                    height: 200,
                    child: const CircularProgressIndicator(),
                  )
                : Column(
                    children: [
                      Text(titleText),
                      const SizedBox(height: 10),
                      GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: noOfPixelsPerAxis),
                        itemCount: colors.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            alignment: Alignment.center,
                            width: 25,
                            child: Container(
                              color: colors[index],
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

// GIVES GRIDS FOR ALL PIXELS IN IMAGE (SORTED)
// SEEMS UNNEEDED BUT LEAVING HERE JUST IN CASE
//         const SizedBox(width: 10),
//         Expanded(
//           flex: 1,
//           child: sortedColors.isEmpty
//               ? Container(
//                   alignment: Alignment.center,
//                   height: 200,
//                   child: const CircularProgressIndicator(),
//                 )
//               : Column(
//                   children: [
//                     Text(
//                       'Sorted Pixels',
//                       style: TextStyle(
//                           color:
//                               palette.isEmpty ? Colors.black : palette.first),
//                     ),
//                     const SizedBox(height: 10),
//                     GridView.builder(
//                         shrinkWrap: true,
//                         gridDelegate:
//                             SliverGridDelegateWithFixedCrossAxisCount(
//                                 crossAxisCount: noOfPixelsPerAxis),
//                         itemCount: sortedColors.length,
//                         itemBuilder: (BuildContext ctx, index) {
//                           return Container(
//                             alignment: Alignment.center,
//                             child: Container(
//                               color: sortedColors[index],
//                             ),
//                           );
//                         }),
//                   ],
//                 ),
//         )
//       ],
//     ),
//   );
// }

// GETS PALETTE OF COLORS FROM IMAGE
// widget to get the palette
// Widget _getPalette() {
//   return SizedBox(
//     height: 50,
//     child: palette.isEmpty
//         ? Container(
//             alignment: Alignment.center,
//             height: 100,
//             child: const CircularProgressIndicator(),
//           )
//         : ListView.builder(
//             shrinkWrap: true,
//             scrollDirection: Axis.horizontal,
//             itemCount: palette.length,
//             itemBuilder: (BuildContext context, int index) => Container(
//               color: palette[index],
//               height: 50,
//               width: 50,
//             ),
//           ),
//   );
// }
