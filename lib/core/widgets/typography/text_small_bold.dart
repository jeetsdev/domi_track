import 'package:flutter/material.dart';

import 'typography.dart';

class TextSmallBold extends TextSmall {
  TextSmallBold({
    required super.text,
    super.key,
    super.color,
    super.overflow,
    super.textAlign,
  }) : super(fontWeight: FontWeight.bold);
}
