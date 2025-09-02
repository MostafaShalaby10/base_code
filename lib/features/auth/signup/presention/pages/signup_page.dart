import 'package:base_code/core/widgets/custom_text_widget.dart';
import 'package:base_code/features/auth/signup/presention/widgets/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_button_widget.dart';
import '../../../../otp/presention/pages/otp_bottom_sheet_widget.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
           appBar: custpmAppBar(),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextWidget(
                text: "إنشاء حساب جديد",
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Appcolors.black500,
              ),
              16.verticalSpace,
              const CustomTextWidget(
                textAlign: TextAlign.start,
                text:
                    "سجّل الآن لتبدأ رحلتك مع أفضل المنتجات الزراعية، عروض حصرية، وتجربة تسوّق سهلة وسريعة في جميع أنحاء المملكة.",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Appcolors.grey600,
              ),
              32.verticalSpace,
              const SignupForm(),
              40.verticalSpace,
              SizedBox(
                width: double.infinity,
                child: CustomButtonWidget(
                  text: "انشاء حساب",
                  function: () {
                    showOtpSheet(context);
                  },
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
                        text: "هل لديك حساب",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Appcolors.grey400,
                        ),
                      ),
                      TextSpan(
                        text: "تسجيل الدخول",
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
