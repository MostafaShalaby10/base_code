import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_text_widget.dart';
import '../../../../../core/widgets/form_field/password_form_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTextWidget(
          text: "رقم الجوال",
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Appcolors.black500,
        ),
        16.verticalSpace,
        /*
              PhoneFormField  
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
        TextButton(
          onPressed: () {},
          child: const CustomTextWidget(
            text: "هل نسيت كلمة المرور؟",
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Appcolors.black500,
          ),
        ),
      ],
    );
  }
}
