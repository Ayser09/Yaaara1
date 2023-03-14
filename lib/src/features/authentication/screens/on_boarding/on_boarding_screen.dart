import 'package:auth/src/constants/colors.dart';
import 'package:auth/src/constants/image_strings.dart';
import 'package:auth/src/constants/sizes.dart';
import 'package:auth/src/constants/text_strings.dart';
import 'package:auth/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:auth/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../models/model_on_boarding.dart';
class OnBoardingScreen extends StatefulWidget {
   OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
  final pages = [
    OnBoardingPageWidget(
        model: OnBoardingModel(
          image: tOnBoardingImage1,
            title: tOnBoardingTitle1,
            subTitle: tOnBoardingSubTitle1,
            CounterText: tOnBoardingCounter1,
            bgColor: tOnBoardingPage1Color,
            height: size.height,
    )),

    OnBoardingPageWidget(
        model: OnBoardingModel(
          image: tOnBoardingImage2,
          title: tOnBoardingTitle2,
          subTitle: tOnBoardingSubTitle2,
          CounterText: tOnBoardingCounter2,
          bgColor: tOnBoardingPage1Color,
          height: size.height,
        )),

    OnBoardingPageWidget(
    model: OnBoardingModel(
    image: tOnBoardingImage3,
    title: tOnBoardingTitle3,
    subTitle: tOnBoardingSubTitle3,
    CounterText: tOnBoardingCounter3,
    bgColor: tOnBoardingPage3Color,
    height: size.height,
    )),
    ];



    return Scaffold(
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          LiquidSwipe(
            pages: pages,
              liquidController: controller,
              slideIconWidget : Icon(Icons.arrow_back_ios_new),
            enableSideReveal: true,
            onPageChangeCallback: onPageChangedCallback,

          ),
          Positioned(
              bottom: 60.0,
              child: OutlinedButton(
               onPressed: (){
                 int nextPage = controller.currentPage +1 ;
                 controller.animateToPage(page: nextPage);
               },
               style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, side: const BorderSide(color: Colors.black26),
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(20)
            ),

                child: Container(
                  padding: const EdgeInsets.all(tDefaultSize),
                decoration: const BoxDecoration(
                  color: tDarkColor, shape: BoxShape.circle
                ),
                  child: Icon(Icons.arrow_forward_ios),

                ),
          )
          ),
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const WelcomeScreen()),
              );
            } , //controller.jumpToPage(page: 2)
            child: const Text("skip", softWrap: true ,style: TextStyle(color: Colors.deepPurple),),
          )),
          Positioned(
            bottom: 10,
              child: AnimatedSmoothIndicator(
                activeIndex: controller.currentPage,
                effect: const WormEffect(
                  activeDotColor: Color(0xff272727),
                  dotHeight: 5.0,
                ),
                count: 3 ,
              ))
        ],
      ),
    );
  }

  void onPageChangedCallback(int activePageIndex) {

    setState(() {
    currentPage = activePageIndex;

    });
  }
}
