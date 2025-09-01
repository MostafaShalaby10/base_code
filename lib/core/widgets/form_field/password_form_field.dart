import 'package:base_code/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_colors.dart';

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,

      obscureText: _isObscured,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),

      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: SvgPicture.asset(AppAssets().passwordIcon),
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 18.h,
          // maxWidth: 18.w
        ),
        hintText: "Enter Password",
        hintStyle: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: Appcolors.grey400,
        ),
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(
            color: Appcolors.grey400,
            _isObscured
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
          ),
          onPressed: () {
            setState(() {
              _isObscured = !_isObscured;
            });
          },
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

      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a password';
        }
        if (value.length < 6) {
          return 'Password must be at least 6 characters long';
        }
        return null;
      },
    );
  }
}
