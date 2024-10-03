import 'package:domi_track/core/constants/constants.dart';
import 'package:domi_track/core/models/models.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class AppState extends ChangeNotifier {
  LatLng selectedLatLang = AppConstants.initalLatLang;
  List<String> defaultMarkers = [];
  List<MapItemModel> initialMapData = appInitailMapDataConstant;
  String selectedMapDataId = appInitailMapDataConstant.first.id;

  set setSelectedLatLang(LatLng latLang) {
    selectedLatLang = latLang;
    notifyListeners();
  }

  set setSelectedMapDataId(String id) {
    selectedMapDataId = id;
    notifyListeners();
  }

  LatLng get getSelectedLatLang => selectedLatLang;
  String get getSelectedMapId => selectedMapDataId;
  MapItemModel get getSelectedMapIdData => initialMapData.firstWhere(
        (ele) => ele.id == selectedMapDataId,
      );

  List<MapItemModel> get getInitialMapData => initialMapData;

  List<MarkerData> get getInitailMarkerDataList => initialMapData
      .map((data) => MarkerData(id: data.id, point: data.point))
      .toList();

  MapItemModel getMapDataById(String id) {
    return initialMapData.firstWhere(
      (ele) => ele.id == id,
    );
  }
}
