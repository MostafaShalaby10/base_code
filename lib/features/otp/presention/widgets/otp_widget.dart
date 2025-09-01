import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/utils/app_colors.dart';

class OtpWidget extends StatelessWidget {
  const OtpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      closeKeyboardWhenCompleted: true,
      length: 6,
      defaultPinTheme: PinTheme(
        width: 48.w,
        height: 48.h,
        textStyle: TextStyle(
          fontSize: 20.sp,
          color: Appcolors.green,
          fontWeight: FontWeight.w400,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Appcolors.grey200,
          ), // Grey border for default
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      focusedPinTheme: PinTheme(
        width: 48.w,
        height: 48.h,
        textStyle: TextStyle(
          fontSize: 20.sp,
          color: Appcolors.green,
          fontWeight: FontWeight.w400,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Appcolors.green,
          ), // Green border for focused
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
