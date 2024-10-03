import 'package:domi_track/core/widgets/typography/typography.dart';
import 'package:flutter/material.dart';

class TextExtraSmallBold extends TextExtraSmall {
  TextExtraSmallBold({
    required super.text,
    super.key,
    super.color,
    super.overflow,
    super.textAlign,
    super.maxLines = 1,
  }) : super(fontWeight: FontWeight.w700);
}
