import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.email_outlined, size: 18),
        hintText: "ادخل البريد الالكتروني",
        hintStyle: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: Appcolors.black500,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 15.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Appcolors.grey200,
            width: 1,
            style: BorderStyle.solid,
            strokeAlign: 10,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(
            color: Appcolors.grey200,
            width: 1,
            style: BorderStyle.solid,
            strokeAlign: 10,
          ),
        ),
      ),
    );
  }
}
