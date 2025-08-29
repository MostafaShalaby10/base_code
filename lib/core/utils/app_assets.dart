mixin class SvgPhotos {
  SvgPhotos._();
  static const svg = 'assets/svgs/';
}
mixin class PNGImages {
  PNGImages._();
  static const svg = 'assets/images/';
}
class AppAssets with SvgPhotos, PNGImages {
  AppAssets._internal();

  factory AppAssets() => AppAssets._internal();
}