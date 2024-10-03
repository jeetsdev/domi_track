import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

class CustomMarker extends Marker {
  CustomMarker({
    required super.point,
    VoidCallback? onTap,
    required Widget child,
    super.rotate,
    super.height,
    super.width,
  }) : super(
          child: GestureDetector(
            onTap: onTap,
            child: child,
          ),
        );
}
