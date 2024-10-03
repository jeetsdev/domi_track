import 'package:domi_track/core/widgets/typography/custom_text.dart';

class TextMedium extends CustomText {
  const TextMedium({
    required super.text,
    super.key,
    super.color,
    super.overflow,
    super.textAlign,
    super.fontWeight,
    super.maxLines,
  }) : super(fontSize: 20);
}


