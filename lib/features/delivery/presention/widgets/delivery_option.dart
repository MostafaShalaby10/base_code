import 'package:base_code/core/utils/app_assets.dart';
import 'package:base_code/core/utils/app_colors.dart';
import 'package:base_code/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeliveryOption extends StatefulWidget {
  const DeliveryOption({super.key});

  @override
  State<DeliveryOption> createState() => _DeliveryOptionState();
}

class _DeliveryOptionState extends State<DeliveryOption> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        2,
        (index) => Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 4.w),

              padding: EdgeInsets.symmetric(horizontal: 33.w, vertical: 21.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: selectedIndex == index
                    ? Appcolors.green
                    : Appcolors.white50,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: SvgPicture.asset(
                      index == 0
                          ? AppAssets().carIcon
                          : AppAssets().deliveryIcon,
                    ),
                  ),
                  8.horizontalSpace,
                  CustomTextWidget(
                    text: index == 0 ? "توصيل" : "استلام",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: selectedIndex == index
                        ? Appcolors.white50
                        : Appcolors.black500,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
