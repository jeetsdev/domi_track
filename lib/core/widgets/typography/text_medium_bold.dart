import 'package:flutter/material.dart';

import 'typography.dart';

class TextMediumBold extends TextMedium {
  const TextMediumBold({
    required super.text,
    super.key,
    super.color,
    super.overflow,
    super.textAlign,
  }) : super(fontWeight: FontWeight.bold);
}
