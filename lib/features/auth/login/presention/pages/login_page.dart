import 'package:base_code/core/utils/app_assets.dart';
import 'package:base_code/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_button_widget.dart';
import '../widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
          appBar: custpmAppBar(),

      body: Padding(
        padding: EdgeInsets.only(
          left: 24.w,
          right: 24.w,
          top: 24.h,
          bottom: 24.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(AppAssets().logoPhoto, width: 185.w)),
              24.verticalSpace,
              const CustomTextWidget(
                text: "تسجيل الدخول إلى حسابك",
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Appcolors.black500,
              ),
              16.verticalSpace,
              const CustomTextWidget(
                textAlign: TextAlign.start,
                text:
                    "ادخل إلى عالم المنتجات الزراعية المتكامل، تابع طلباتك، وابدأ التسوق بسهولة وسرعة",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Appcolors.grey600,
              ),
              32.verticalSpace,
              const LoginForm(),
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
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "ليس لديك حساب؟",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Appcolors.grey400,
                        ),
                      ),
                      TextSpan(
                        text: "انشاء حساب",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Appcolors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
