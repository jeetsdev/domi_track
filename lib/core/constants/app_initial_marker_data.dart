import 'package:domi_track/core/constants/constants.dart';
import 'package:domi_track/core/enums/enums.dart';
import 'package:domi_track/core/models/models.dart';
import 'package:latlong2/latlong.dart';

List<MapItemModel> appInitailMapDataConstant = [
  MapItemModel(
    title: "Leisure Valley Park",
    headerImage: AssetImages.leisureValleyParkImage1,
    images: [
      AssetImages.leisureValleyParkImage1,
      AssetImages.leisureValleyParkImage2,
      AssetImages.leisureValleyParkImage3,
      AssetImages.leisureValleyParkImage4,
      AssetImages.leisureValleyParkImage5,
      AssetImages.leisureValleyParkImage6,
    ],
    docs: [
      DocsItemModel(
        title: "Leisure Valley Park Info",
        type: DocTypeEnums.docs,
        lastOpendTime: DateTime.now(),
      ),
      DocsItemModel(
        title: "Leisure Valley Park Policy",
        type: DocTypeEnums.pdf,
        lastOpendTime: DateTime.now(),
      ),
      DocsItemModel(
        title: "Bank Statement - Sepetember 2024",
        type: DocTypeEnums.sheet,
        lastOpendTime: DateTime.now(),
      ),
      DocsItemModel(
        title: "Roadmap",
        type: DocTypeEnums.docs,
        lastOpendTime: DateTime.now(),
      ),
    ],
    point: LatLng(28.46997045303558, 77.06626535507051),
    id: "leisureValleyPark",
  ),
  MapItemModel(
    title: "Lemon Tree Premier",
    headerImage: AssetImages.lemonTreePremierImage1,
    images: [
      AssetImages.lemonTreePremierImage1,
      AssetImages.lemonTreePremierImage2,
      AssetImages.lemonTreePremierImage3,
      AssetImages.lemonTreePremierImage4,
      AssetImages.lemonTreePremierImage5,
      AssetImages.lemonTreePremierImage6,
    ],
    docs: [
      DocsItemModel(
        title: "Lemon Tree  Info",
        type: DocTypeEnums.pdf,
        lastOpendTime: DateTime.now(),
      ),
      DocsItemModel(
        title: "Lemon Tree  Policy",
        type: DocTypeEnums.docs,
        lastOpendTime: DateTime.now(),
      ),
      DocsItemModel(
        title: "Bank Statement - December 2024",
        type: DocTypeEnums.sheet,
        lastOpendTime: DateTime.now(),
      ),
      DocsItemModel(
        title: "Roadmap",
        type: DocTypeEnums.docs,
        lastOpendTime: DateTime.now(),
      ),
    ],
    point: LatLng(28.467915494299454, 77.06536140681004),
    id: "lemonTreePremier",
  ),
  MapItemModel(
    title: "Crowne Plaza",
    headerImage: AssetImages.crownePlazaImage1,
    images: [
      AssetImages.crownePlazaImage1,
      AssetImages.crownePlazaImage2,
      AssetImages.crownePlazaImage3,
      AssetImages.crownePlazaImage4,
      AssetImages.crownePlazaImage5,
      AssetImages.crownePlazaImage6,
    ],
    docs: [
      DocsItemModel(
        title: "Crowne Plaza  Info",
        type: DocTypeEnums.pdf,
        lastOpendTime: DateTime.now(),
      ),
      DocsItemModel(
        title: "Crowne Plaza  Policy",
        type: DocTypeEnums.docs,
        lastOpendTime: DateTime.now(),
      ),
      DocsItemModel(
        title: "Bank Statement - Crowne Plaza",
        type: DocTypeEnums.sheet,
        lastOpendTime: DateTime.now(),
      ),
      DocsItemModel(
        title: "Crowne Plaza: Roadmap",
        type: DocTypeEnums.docs,
        lastOpendTime: DateTime.now(),
      ),
      DocsItemModel(
        title: "Crowne Plaza: New Initiatives",
        type: DocTypeEnums.sheet,
        lastOpendTime: DateTime.now(),
      ),
      DocsItemModel(
        title: "Expenses",
        type: DocTypeEnums.docs,
        lastOpendTime: DateTime.now(),
      ),
    ],
    point: LatLng(28.468819889660175, 77.05989387811222),
    id: "crownePlaza",
  ),
];
