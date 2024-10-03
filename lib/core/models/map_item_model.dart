import 'package:domi_track/core/models/models.dart';

class MapItemModel extends MarkerData {
  final String title;
  final List<String> images;
  final List<DocsItemModel> docs;
  final String headerImage;

  MapItemModel({
    required this.title,
    required this.images,
    required this.docs,
    required super.point,
    required super.id,
    required this.headerImage,
  });
}
