import 'package:domi_track/core/constants/constants.dart';
import 'package:domi_track/features/home/view/widgets/location_detail_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 40.sp,
            width: 40.sp,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: AppColors.shadow,
                  spreadRadius: 5,
                )
              ],
              shape: BoxShape.circle,
              color: AppColors.black,
            ),
            child: Icon(
              Icons.account_circle_outlined,
              color: AppColors.white,
            ),
          ),
          Expanded(
            child: LocationDetailsBar(),
          ),
          Container(
            height: 40.sp,
            width: 40.sp,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: AppColors.shadow,
                  spreadRadius: 5,
                )
              ],
              shape: BoxShape.circle,
              color: AppColors.black,
            ),
            child: Icon(
              size: 20,
              Icons.mark_unread_chat_alt_sharp,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
