import 'package:domi_track/core/constants/constants.dart';
import 'package:domi_track/core/models/models.dart';
import 'package:domi_track/core/utils/utils.dart';
import 'package:domi_track/core/widgets/widget.dart';
import 'package:domi_track/providers/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';

class AppCustomMap extends StatelessWidget {
  const AppCustomMap({
    super.key,
    required this.initialPosition,
    this.markerDataList,
    this.onMapItemTapHandler,
    required this.onMarkerTap,
    this.initalZoom,
    this.userSelectedMarker,
  });

  final LatLng initialPosition;
  final void Function(TapPosition, LatLng)? onMapItemTapHandler;
  final List<MarkerData>? markerDataList;
  final void Function(MarkerData) onMarkerTap;
  final MarkerData? userSelectedMarker;
  final double? initalZoom;

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: initialPosition,
        initialZoom: initalZoom ?? 15,
        onTap: onMapItemTapHandler,
        interactionOptions: InteractionOptions(
          flags: InteractiveFlag.all,
        ),
      ),
      children: [
        getOpenStreetMapTileLayer,
        MarkerLayer(
          markers: [
            if (userSelectedMarker != null)
              CustomMarker(
                point: userSelectedMarker!.point,
                onTap: () => onMarkerTap(userSelectedMarker!),
                child: Icon(
                  Icons.location_on,
                  color: AppColors.red,
                  size: 25.sp,
                ),
                rotate: true,
              )
            else if (markerDataList != null)
              ...markerDataList!.map((data) {
                final currentMapData =
                    context.read<AppState>().getMapDataById(data.id);
                return CustomMarker(
                  height: 45.sp,
                  width: 45.sp,
                  point: data.point,
                  onTap: () => onMarkerTap(data),
                  child: MapImageMarker(
                    border: true,
                    image: currentMapData.headerImage,
                  ),
                  rotate: true,
                );
              }),
          ],
        ),
      ],
    );
  }
}
