import 'package:domi_track/core/constants/constants.dart';
import 'package:domi_track/core/models/models.dart';
import 'package:domi_track/core/widgets/widget.dart';
import 'package:domi_track/features/details/view/widgets/invite_and_earn_card.dart';
import 'package:domi_track/providers/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedMarker = context.watch<AppState>().getSelectedLatLang;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: AppCustomMap(
              initialPosition: selectedMarker,
              userSelectedMarker: MarkerData(
                id: "userSelected",
                point: selectedMarker,
              ),
              initalZoom: 18,
              onMarkerTap: (markerData) {
                context.read<AppState>().setSelectedLatLang = markerData.point;
              },
              onMapItemTapHandler: (pos, latLang) {
                context.read<AppState>().setSelectedLatLang = latLang;
              },
            ),
          ),
          Positioned(
            top: 50.sp,
            left: 15.sp,
            child: InkWell(
              onTap: () {
                context.pop();
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: AppColors.shadow,
                      spreadRadius: 2,
                    )
                  ],
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  fill: 1,
                ),
              ),
            ),
          ),
          Positioned(
            right: 20,
            left: 20,
            bottom: 20,
            child: InviteAndEarnCard(),
          )
        ],
      ),
    );
  }
}
