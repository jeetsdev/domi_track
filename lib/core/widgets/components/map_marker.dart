import 'package:domi_track/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MapImageMarker extends StatelessWidget {
  final String image;
  final bool border;
  const MapImageMarker({
    super.key,
    required this.image,
    this.border = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 35.sp,
          height: 35.sp,
          padding: border ? EdgeInsets.all(2.sp) : null,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.black,
          ),
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 30.sp,
          child: Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
