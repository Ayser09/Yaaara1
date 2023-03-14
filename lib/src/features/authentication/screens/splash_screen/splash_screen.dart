// import 'package:auth/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
// import 'package:auth/src/constants/image_strings.dart';
// import 'package:auth/src/constants/sizes.dart';
// import 'package:auth/src/constants/text_strings.dart';
// import 'package:auth/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../../../common_widgets/fade_in_animation/animation_design.dart';
//
// class SplashScreen extends StatelessWidget {
//   SplashScreen({Key? key}) : super(key: key);
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(FadeInAnimationController());
//     splashController.startAnimation();
//     return Scaffold(
//       body: Stack(
//         children: [
//           TFadeInAnimation(durationInMs: 1000,animate : TAnimatePosition(
//               topAfter : 0,
//               topBefore: -30,
//               leftBefore: -30,
//               leftAfter:0,),
//               child: child)
//           //  animatedPositioned(
//           // duration: const Duration(milliseconds:1600),
//           //top: splashController.animate.value ? 0: -30,
//           //left: splashController.animate.value ? 0: -30,
//           //      child: Image(image: AssetImage(tSplashTopIcon)), //have to change this as its coinciding
//           //  ),
//           TFadeInAnimation(splashController: splashController)
//         ],
//       ),
//     );
//   }
//
// }
// class TFadeInAnimation extends StatelessWidget {
//   const TFadeInAnimation({
//     super.key,
//     required this.splashController,
//   });
//
//   final SplashScreenController splashController;
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//           () => AnimatedPositioned(
//         duration: const Duration(milliseconds: 1000),
//         top: 80,
//         left: splashController.animate.value ? tDefaultSize : -80,
//         child: AnimatedOpacity(
//           duration: const Duration(milliseconds: 1000),
//           opacity: splashController.animate.value ? 1 : 0,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 tAppName,
//                 style: Theme.of(context).textTheme.headlineLarge,
//               ),
//               Text(
//                 tAppTagLine,
//                 style: Theme.of(context).textTheme.labelLarge,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
