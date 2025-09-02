import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_button_widget.dart';
import '../../../../core/widgets/custom_text_widget.dart';

showOtpSheet(context) {
  showModalBottomSheet(
    backgroundColor: Colors.white,
    context: context,
    builder: (context) => Padding(
      padding: EdgeInsets.only(
        top: 16.h,
        right: 24.w,
        left: 24.w,
        bottom: 34.h,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppAssets().cancelIcon),
          ),
          8.verticalSpace,
          const CustomTextWidget(
            text: "التحقق من رقم الهاتف",
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Appcolors.black500,
          ),
          16.verticalSpace,
          const CustomTextWidget(
            text: "اختر الطريقة",
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Appcolors.grey600,
          ),
          20.verticalSpace,
          InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 16.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: Appcolors.grey400),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 3),
                    blurRadius: 3,
                    color: Colors.black.withOpacity(.03),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppAssets().messageIcon),
                  8.horizontalSpace,
                  const CustomTextWidget(
                    text: "إرسال عبر رسالة",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Appcolors.grey400,
                  ),
                ],
              ),
            ),
          ),
          12.verticalSpace,
          InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 16.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: Appcolors.grey400),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 3),
                    blurRadius: 3,
                    color: Colors.black.withOpacity(.03),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppAssets().whatsappIcon),
                  8.horizontalSpace,
                  const CustomTextWidget(
                    text: "إرسال عبر واتساب",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Appcolors.grey400,
                  ),
                ],
              ),
            ),
          ),
          32.verticalSpace,
          SizedBox(
            width: double.infinity,
            child: CustomButtonWidget(
              text: "انشاء حساب",
              function: () {},
              color: Appcolors.green,
              textColor: Appcolors.white50,
            ),
          ),
        ],
      ),
    ),
  );
}
