import 'package:domi_track/core/constants/constants.dart';
import 'package:domi_track/core/widgets/components/map_marker.dart';
import 'package:domi_track/core/widgets/typography/typography.dart';
import 'package:domi_track/providers/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class LocationDetailsBar extends StatefulWidget {
  const LocationDetailsBar({
    super.key,
  });

  @override
  State<LocationDetailsBar> createState() => _LocationDetailsBarState();
}

class _LocationDetailsBarState extends State<LocationDetailsBar> {
  @override
  Widget build(BuildContext context) {
    final selectedMapData = context.watch<AppState>().getSelectedMapIdData;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.sp),
      alignment: Alignment.center,
      child: IntrinsicWidth(
        child: Container(
          clipBehavior: Clip.hardEdge,
          padding: EdgeInsets.only(left: 5, right: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: AppColors.shadow,
                spreadRadius: 5,
              )
            ],
            color: AppColors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          height: 40.sp,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              MapImageMarker(
                image: selectedMapData.headerImage,
                border: false,
              ),
              SizedBox(width: 10.sp),
              Expanded(
                child: TextExtraSmallBold(
                  text: selectedMapData.title,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
