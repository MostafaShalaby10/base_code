import 'package:base_code/core/widgets/custom_button_widget.dart';
import 'package:base_code/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/otp_widget.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
            appBar: custpmAppBar(),

      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 74.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                text: "رمز التحقق",
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Appcolors.black500,
              ),
              16.verticalSpace,
              CustomTextWidget(
                text:
                    "لقد قمنا بإرسال رسالة نصية تحتوي على رمز إلى الرقم +966-123562، يرجى التحقق من رسائلك وإدخال الرمز المكون من ٤ أرقام أدناه.",
                textAlign: TextAlign.start,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Appcolors.grey600,
              ),
              32.verticalSpace,
              OtpWidget(),
              24.verticalSpace,
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: CustomTextWidget(
                    text: "اعادة إرسال الرمز",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Appcolors.black500,
                    textDecoration: TextDecoration.underline,
                  ),
                ),
              ),
              40.verticalSpace,
              SizedBox(
                width: double.infinity,
                child: CustomButtonWidget(text: "التالي", function: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
