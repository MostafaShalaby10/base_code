import 'package:base_code/core/utils/app_assets.dart';
import 'package:base_code/core/utils/app_colors.dart';
import 'package:base_code/core/widgets/custom_button_widget.dart';
import 'package:base_code/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: 3,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.only(left: 24.w, right: 24.w),
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(getImage(index)),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              30.verticalSpace,
              Align(
                alignment: Alignment.topRight,
                child: Row(
                  children: [
                    const CustomTextWidget(
                      text: "تخطي",
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.black,
                      textDecoration: TextDecoration.underline,
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_rounded,
                        color: Appcolors.black500,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              CustomTextWidget(
                text: getTitle(index),
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              20.verticalSpace,
              CustomTextWidget(
                text: getDescription(index),
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Appcolors.white50,
              ),
              32.verticalSpace,
              SizedBox(
                width: double.infinity,
                child: CustomButtonWidget(
                  text: "التالي",
                  function: () {
                    index != 2
                        ? pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.linear,
                          )
                        : null;
                  },
                  color: Appcolors.secondary500,
                ),
              ),
              index == 0 ? 40.verticalSpace : 66.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}

String getTitle(int index) {
  switch (index) {
    case 0:
      return "كل ما تحتاجه لمزرعتك في مكان واحد";
    case 1:
      return "نؤمن أن نجاحك الزراعي يبدأ";
    case 2:
      return "اكتشف سهولة التسوق عبر التطبيق";
    default:
      return "";
  }
}

String getDescription(int index) {
  switch (index) {
    case 0:
      return "تسوّق البذور، الأسمدة، الأدوات، والمزيد من المنتجات الزراعية بجودة عالية وبأسعار منافسة.";
    case 1:
      return "من اختيار المنتجات الصحيحة التي نقدمها لك بعناية.";
    case 2:
      return "واحصل على مستلزماتك الزراعية في وقت قياسي";
    default:
      return "";
  }
}

String getImage(int index) {
  switch (index) {
    case 0:
      return AppAssets().onBoarding1;
    case 1:
      return AppAssets().onBoarding2;
    case 2:
      return AppAssets().onBoarding3;
    default:
      return "";
  }
}
