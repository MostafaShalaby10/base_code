import 'package:base_code/core/utils/app_assets.dart';
import 'package:base_code/core/utils/app_colors.dart';
import 'package:base_code/core/widgets/custom_button_widget.dart';
import 'package:base_code/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/widgets/custom_app_bar.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: custpmAppBar(),

      body: Padding(
        padding: EdgeInsets.only(
          left: 24.w,
          right: 24.w,
          top: 37.h,
          bottom: 44.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomTextWidget(
                text: "مرحبًا بكم في تطبيقنا ",
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Appcolors.black500,
              ),
              20.verticalSpace,
              const CustomTextWidget(
                text: "شريككم الموثوق في التميز الزراعي.",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Appcolors.grey600,
              ),
              32.verticalSpace,
              Image.asset(
                AppAssets().loginPhoto,
                // height: 241.h,
                width: 222.w,
                fit: BoxFit.cover,
              ),
              24.verticalSpace,
              const CustomTextWidget(
                text:
                    "استكشف عالمًا من البذور عالية الجودة والأدوات ومستلزمات الزراعة الأساسية في تطبيق واحد",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Appcolors.grey800,
              ),
              40.verticalSpace,
              SizedBox(
                width: double.infinity,
                child: CustomButtonWidget(
                  text: "تسجيل دخول",
                  function: () {},
                  // color: Appcolors.green,
                  textColor: Appcolors.white50,
                ),
              ),
              12.verticalSpace,
              SizedBox(
                width: double.infinity,
                child: CustomButtonWidget(
                  text: "المتابعه كزائر",
                  function: () {},
                  textColor: Appcolors.green,
                  color: Colors.white,
                ),
              ),
              12.verticalSpace,
              TextButton(
                onPressed: () {},
                child: const CustomTextWidget(
                  text: "انشاء حساب",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  textDecoration: TextDecoration.underline,
                  color: Appcolors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
