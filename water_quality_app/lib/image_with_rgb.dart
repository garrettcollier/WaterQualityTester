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
  List<Color> colors = [];
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
      body: Container(
        decoration: BoxDecoration(
          // setup initial gradient
          gradient: palette.isEmpty
              ? null
              : LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [0.01, 0.6, 1],
                  colors: [
                    palette.first.withOpacity(0.3),
                    palette[palette.length ~/ 2],
                    palette.last.withOpacity(0.9),
                  ],
                ),
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            // display image
            SizedBox(
              height: 300,
              child: imageBytes != null && imageBytes!.isNotEmpty
                  ? Image.memory(
                      imageBytes!,
                      fit: BoxFit.fill,
                    )
                  : const Center(child: CircularProgressIndicator()),
            ),
            const SizedBox(
              height: 10,
            ),
            // display palette
            Container(
              color: Colors.white.withOpacity(0.5),
              padding: const EdgeInsets.only(top: 6, bottom: 16),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text('Palette of $noOfPaletteColors colors:'),
                  const SizedBox(height: 10),
                  _getPalette()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // get all colors from image
  Future<void> extractColors() async {
    // initial colors, sorted colors, palette, and image bytes
    colors = [];
    sortedColors = [];
    palette = [];
    imageBytes = null;

    setState(() {});

    // number of palette colors
    noOfPaletteColors = 16;

    // get image bytes and extract colors, sort, and generate the palette
    imageBytes = await widget.image.readAsBytes();
    colors = await compute(extractPixelsColors, imageBytes);
    setState(() {});
    sortedColors = await compute(sortColors, colors);
    setState(() {});
    palette = await compute(
        generatePalette, {keyPalette: colors, keyNoOfItems: noOfPaletteColors});
    primary = palette.last;
    primaryText = palette.first;
    background = palette.first.withOpacity(0.5);
    setState(() {});
  }

  // widget to get the palette
  Widget _getPalette() {
    return SizedBox(
      height: 50,
      child: palette.isEmpty
          ? Container(
              alignment: Alignment.center,
              height: 100,
              child: const CircularProgressIndicator(),
            )
          : ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: palette.length,
              itemBuilder: (BuildContext context, int index) => Container(
                color: palette[index],
                height: 50,
                width: 50,
              ),
            ),
    );
  }
}

// GIVES GRIDS FOR ALL PIXELS IN IMAGE (SORTED AND UNSORTED)
// SEEMS UNNEEDED BUT LEAVING HERE JUST IN CASE
// Widget _getGrids() {
//   return SizedBox(
//     height: 260,
//     child: Row(
//       children: [
//         Expanded(
//           flex: 1,
//           child: colors.isEmpty
//               ? Container(
//                   alignment: Alignment.center,
//                   height: 200,
//                   child: const CircularProgressIndicator(),
//                 )
//               : Column(
//                   children: [
//                     Text(
//                       'Extracted Pixels',
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
//                         itemCount: colors.length,
//                         itemBuilder: (BuildContext ctx, index) {
//                           return Container(
//                             alignment: Alignment.center,
//                             child: Container(
//                               color: colors[index],
//                             ),
//                           );
//                         }),
//                   ],
//                 ),
//         ),
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
