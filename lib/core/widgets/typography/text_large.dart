import 'package:flutter/material.dart';

import 'typography.dart';

class TextLarge extends CustomText {
  const TextLarge({
    required super.text,
    super.key,
    super.color,
    super.overflow,
    super.textAlign,
    super.maxLines = 1,
  }) : super(fontSize: 24, fontWeight: FontWeight.w700);
}
