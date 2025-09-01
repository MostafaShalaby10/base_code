import 'package:base_code/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text_widget.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.text,
    this.color,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    required this.function,
  });
  final String text;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 54.h,
      padding: EdgeInsets.zero,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        // borderSide: BorderSide.none,
        borderSide: const BorderSide(color: Appcolors.green, width: 1),
      ),
      color: color ?? Appcolors.green,
      onPressed: function,
      child: CustomTextWidget(
        text: text,
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.w300,
        color: textColor ?? Colors.white,
      ),
    );
  }
}
