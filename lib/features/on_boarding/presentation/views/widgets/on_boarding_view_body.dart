import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kutuku/core/utiles/size_config.dart';
import 'package:kutuku/features/Auth/presentation/views/login_view.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'custom_dots_indicator.dart';
import 'custom_page_view.dart';
import 'nike_custom_text.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              "assets/images/img.png",
              height: SizeConfig.defaultSize! * 23,
            ),
          ),
          Positioned(
            top: SizeConfig.defaultSize! * 14,
            child: Opacity(opacity: .1, child: NikeCustomText()),
          ),
          Positioned(
            top: SizeConfig.defaultSize! * 14,
            child: Image.asset(
              "assets/images/dots.png",
              height: SizeConfig.defaultSize! * 36,
            ),
          ),

          CustomPageView(pageController: pageController),
          Positioned(
            bottom: SizeConfig.defaultSize! * 5,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomDotsIndicator(
                  indexDot:
                      pageController!.hasClients
                          ? pageController!.page!.round()
                          : 0,
                ),
                const Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: CustomButton(
                    onTap: () {
                      pageController!.page == 2
                          ? Get.to(
                            () => LoginView(),
                            transition: Transition.rightToLeft,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeIn,
                          )
                          : pageController!.nextPage(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeIn,
                          );
                    },
                    text:
                        pageController!.hasClients
                            ? pageController!.page == 2
                                ? "Get Started"
                                : "Next"
                            : "Next",
                    width:
                        pageController!.hasClients
                            ? pageController!.page == 2
                                ? 180
                                : 130
                            : 130,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
