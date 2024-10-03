import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'typography.dart';

class TextSmall extends CustomText {
  TextSmall({
    required super.text,
    super.key,
    super.color,
    super.overflow,
    super.textAlign,
    super.fontWeight,
    super.maxLines,
  }) : super(fontSize: 14.sp);
}
