import 'package:base_code/core/utils/app_colors.dart';
import 'package:base_code/core/widgets/custom_text_widget.dart';
import 'package:base_code/core/widgets/form_field/password_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/form_field/email_form_field.dart';
import '../../../../../core/widgets/form_field/name_form_field.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTextWidget(
          text: "الاسم",
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Appcolors.black500,
        ),
        16.verticalSpace,
        NameFormField(controller: TextEditingController()),
        16.verticalSpace,
        const CustomTextWidget(
          text: "البريد الالكتروني",
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Appcolors.black500,
        ),
        16.verticalSpace,
        EmailFormField(controller: TextEditingController()),
        16.verticalSpace,
        const CustomTextWidget(
          text: "رقم الجوال",
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Appcolors.black500,
        ),
        16.verticalSpace,
        /*
        Add Phone Form field
        */
        16.verticalSpace,
        const CustomTextWidget(
          text: "كلمه المرور",
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Appcolors.black500,
        ),
        16.verticalSpace,
        PasswordFormField(controller: TextEditingController()),

        16.verticalSpace,
        const CustomTextWidget(
          text: "تأكيد كلمه المرور",
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Appcolors.black500,
        ),
        16.verticalSpace,
        PasswordFormField(controller: TextEditingController()),
      ],
    );
  }
}
