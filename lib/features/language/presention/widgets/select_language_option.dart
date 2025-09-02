import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class SelectLanguageOption extends StatefulWidget {
  const SelectLanguageOption({super.key});

  @override
  State<SelectLanguageOption> createState() => _SelectLanguageOptionState();
}

class _SelectLanguageOptionState extends State<SelectLanguageOption> {
  int? selectedIndex; 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              selectedIndex = 0;
            });
          },
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 16.h),
            decoration: BoxDecoration(
              color: selectedIndex == 0 ? Appcolors.green : Colors.white,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: Appcolors.grey200),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 3),
                  blurRadius: 3,
                  color: Colors.black.withOpacity(.03),
                ),
              ],
            ),
            child: CustomTextWidget(
              text: "اللغه العربيه",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: selectedIndex == 0 ? Appcolors.white50 : Appcolors.grey400,
            ),
          ),
        ),
        12.verticalSpace,
        InkWell(
          onTap: () {
            setState(() {
              selectedIndex = 1;
            });
          },
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 16.h),
            decoration: BoxDecoration(
              color: selectedIndex == 1 ? Appcolors.green : Colors.white,
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
            child: CustomTextWidget(
              text: "English",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: selectedIndex == 1 ? Appcolors.white50 : Appcolors.grey400,
            ),
          ),
        ),
      ],
    );
  }
}
