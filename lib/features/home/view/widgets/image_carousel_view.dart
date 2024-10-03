import 'package:domi_track/core/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageCarouselView extends StatelessWidget {
  const ImageCarouselView({
    super.key,
    required this.selectedMapData,
  });

  final MapItemModel selectedMapData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.sp,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return Container(
            width: 70.sp,
            height: 70.sp,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Image.asset(
              selectedMapData.images[index],
              fit: BoxFit.cover,
            ),
          );
        },
        separatorBuilder: (ctx, index) {
          return SizedBox(
            width: 10.sp,
          );
        },
        itemCount: selectedMapData.images.length,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}
