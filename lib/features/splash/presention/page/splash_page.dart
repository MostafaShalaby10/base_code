import 'package:base_code/core/utils/app_assets.dart';
import 'package:base_code/features/auth/register_page.dart';
import 'package:base_code/features/language/presention/pages/language_bottom_sheet.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      // Navigator.pushAndRemoveUntil(
      //   context,
      //   MaterialPageRoute(builder: (context) => RegisterPage()),
      //   (route) => false,
      // );
      showLanguageBottomSheet(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset(AppAssets().logoPhoto),
    );
  }
}
