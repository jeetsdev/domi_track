import 'package:flutter_map/flutter_map.dart';

TileLayer get getOpenStreetMapTileLayer {
  return TileLayer(
    urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
    userAgentPackageName: 'com.example.domiTrack',
    panBuffer: 1,
    // tileBuilder: darkModeTileBuilder, // Builder for dark mode
  );
}
