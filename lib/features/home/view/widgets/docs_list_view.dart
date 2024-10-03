import 'package:domi_track/core/constants/constants.dart';
import 'package:domi_track/core/enums/enums.dart';
import 'package:domi_track/core/models/models.dart';
import 'package:domi_track/core/widgets/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocsListView extends StatelessWidget {
  const DocsListView({
    super.key,
    required this.selectedMapData,
  });

  final MapItemModel selectedMapData;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.only(
        left: 20.sp,
        right: 20.sp,
        top: 20.sp,
        bottom: 40.sp,
      ),
      itemBuilder: (ctx, index) {
        final currentMapData = selectedMapData.docs[index];
        return Container(
          clipBehavior: Clip.hardEdge,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            color: AppColors.offBlack,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 25.sp,
                height: 25.sp,
                child: SvgPicture.asset(
                  currentMapData.type.getDocImage,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 12.sp,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextExtraSmall(
                      text: currentMapData.title,
                    ),
                    TextExtraSmall(
                      text: currentMapData.getOpendTimeData,
                      color: AppColors.offWhite,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (ctx, index) {
        return SizedBox(
          height: 10.sp,
        );
      },
      itemCount: selectedMapData.docs.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
