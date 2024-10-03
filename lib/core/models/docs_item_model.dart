import 'package:domi_track/core/constants/constants.dart';
import 'package:domi_track/core/enums/enums.dart';

class DocsItemModel {
  final String title;
  final DocTypeEnums type;
  final DateTime lastOpendTime;

  DocsItemModel({
    required this.title,
    required this.type,
    required this.lastOpendTime,
  });

  String get getOpendTimeData {
    return 'Opened ${AppConstants.monthNames[lastOpendTime.month - 1]} ${lastOpendTime.day}, ${lastOpendTime.year}';
  }
}
