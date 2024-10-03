import 'package:domi_track/core/constants/constants.dart';
import 'package:domi_track/core/widgets/typography/typography.dart';
import 'package:flutter/material.dart';

class SheetSectionHeader extends StatelessWidget {
  const SheetSectionHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextExtraSmall(
            text: title,
          ),
        ),
        Icon(
          Icons.chevron_right,
          color: AppColors.white,
        ),
      ],
    );
  }
}
