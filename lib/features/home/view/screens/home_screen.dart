import 'package:domi_track/core/constants/constants.dart';
import 'package:domi_track/core/route/route_utils.dart';
import 'package:domi_track/core/widgets/widget.dart';
import 'package:domi_track/features/home/view/widgets/widgets.dart';
import 'package:domi_track/providers/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final markerData = context.read<AppState>().getInitailMarkerDataList;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: AppCustomMap(
              initialPosition: AppConstants.initalLatLang,
              markerDataList: markerData,
              onMapItemTapHandler: (pos, latLang) {
                context.read<AppState>().setSelectedLatLang = latLang;
                context.pushNamed(RouteEnum.details.toName);
              },
              onMarkerTap: (markerData) {
                context.read<AppState>().setSelectedMapDataId = markerData.id;
              },
            ),
          ),
          Positioned(
            top: 30.sp,
            left: 15.sp,
            right: 15.sp,
            child: HomeTopBar(),
          ),
          HomeInfoSheet(),
        ],
      ),
    );
  }
}
