import 'package:domi_track/core/constants/constants.dart';
import 'package:domi_track/core/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InviteAndEarnCard extends StatelessWidget {
  const InviteAndEarnCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextSmallBold(text: "Invite & Earn"),
              Icon(
                Icons.close,
                color: AppColors.white,
              )
            ],
          ),
          SizedBox(
            height: 10.sp,
          ),
          TextExtraSmall(
            color: AppColors.white,
            text:
                "Invite your neghibor and you both recive \$10 when they claim their address,",
            maxLines: 3,
          ),
          SizedBox(
            height: 10.sp,
          ),
          AppPrimaryButton(
            onPressed: () {},
            label: TextExtraSmallBold(
              text: "Send Invite",
              color: AppColors.black,
            ),
          )
        ],
      ),
    );
  }
}
