import 'package:flutter/material.dart';

Widget darkModeTileBuilder(
  BuildContext context,
  Widget tileWidget,
) {
  return ColorFiltered(
    colorFilter: const ColorFilter.matrix([
      -0.2126, -0.7152, -0.0722, 0, 255, // Red channel
      -0.2126, -0.7152, -0.0722, 0, 255, // Green channel
      -0.2126, -0.7152, -0.0722, 0, 255, // Blue channel
      0, 0, 0, 1, 0, // Alpha channel
    ]),
    child: tileWidget,
  );
}
