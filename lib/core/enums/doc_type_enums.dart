import 'package:domi_track/core/constants/constants.dart';

enum DocTypeEnums {
  sheet,
  pdf,
  docs,
}

extension DocTypeEnumsX on DocTypeEnums {
  String get getDocImage {
    switch (this) {
      case DocTypeEnums.sheet:
        return AssetImages.sheetImage;
      case DocTypeEnums.pdf:
        return AssetImages.pdfImage;
      case DocTypeEnums.docs:
        return AssetImages.docsImage;
      default:
        return AssetImages.docsImage;
    }
  }
}
