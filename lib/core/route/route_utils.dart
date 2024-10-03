enum RouteEnum {
  home,
  details,
}

extension RouteExt on RouteEnum {
  String get toName => name;

  String get toPath {
    switch (this) {
      case RouteEnum.home:
        return '/home';
      case RouteEnum.details:
        return '/details';
    }
  }
}
