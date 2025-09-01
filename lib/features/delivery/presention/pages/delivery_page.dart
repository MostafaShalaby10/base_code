import 'package:base_code/core/utils/app_assets.dart';
import 'package:base_code/core/utils/app_colors.dart';
import 'package:base_code/core/widgets/custom_button_widget.dart';
import 'package:base_code/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/delivery_option.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custpmAppBar(),
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              width: double.infinity,
              fit: BoxFit.cover,
              AppAssets().vegetablesPhoto,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(
                  text: "اختر طريقة ",
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Appcolors.black500,
                ),
                12.verticalSpace,
                CustomTextWidget(
                  textAlign: TextAlign.start,
                  text: "يمكنك تغيير الطريقة في اي وقت من داخل التطبيق ",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Appcolors.grey600,
                ),
                24.verticalSpace,
                DeliveryOption(),
                66.verticalSpace,
                SizedBox(
                  width: double.infinity,
                  child: CustomButtonWidget(text: "التالي", function: () {}),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
