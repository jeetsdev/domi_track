import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'typography.dart';

class TextExtraSmall extends CustomText {
  TextExtraSmall({
    required super.text,
    super.key,
    super.color,
    super.overflow,
    super.textAlign,
    super.maxLines = 1,
    super.fontWeight,
  }) : super(fontSize: 12.sp);
}
