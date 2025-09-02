import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_button_widget.dart';
import '../../../../core/widgets/custom_text_widget.dart';
import '../widgets/select_language_option.dart';

showLanguageBottomSheet(context) {

  showModalBottomSheet(
    isDismissible: false, // Prevent dismiss on tap outside
    enableDrag: false,  
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
            text: "اختر لغة ",
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Appcolors.black500,
          ),
          20.verticalSpace,
          SelectLanguageOption(),
         32.verticalSpace,
          SizedBox(
            width: double.infinity,
            child: CustomButtonWidget(
              text: "التالي",
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
