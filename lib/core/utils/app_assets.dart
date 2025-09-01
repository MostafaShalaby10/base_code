mixin class SvgPhotos {
  SvgPhotos._();
  static const svg = 'assets/svgs/';
  String passwordIcon = '${svg}password_icon.svg';
  String phoneIcon = '${svg}phone_icon.svg';
  String cancelIcon = '${svg}cancel-circle.svg';
  String whatsappIcon = '${svg}whatsapp.svg';
  String messageIcon = '${svg}message_square.svg';
  String carIcon = '${svg}car_icon.svg';
  String deliveryIcon = '${svg}delivery_icon.svg';
}
mixin class PNGImages {
  PNGImages._();
  static const png = 'assets/images/';
  String onBoarding1 = '${png}Onboarding_1.png';
  String onBoarding2 = '${png}Onboarding_2.png';
  String onBoarding3 = '${png}Onboarding_3.png';
  String loginPhoto = '${png}login_photo.png';
  String logoPhoto = '${png}logo.png';
  String vegetablesPhoto = '${png}vegetables.png';

}
class AppAssets with SvgPhotos, PNGImages {
  AppAssets._internal();

  factory AppAssets() => AppAssets._internal();
}