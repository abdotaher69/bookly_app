import 'package:bookly_app/core/utilities/AssetsData.dart';
import 'package:bookly_app/featuers/splash/presentation/veiws/wedgits/sliding_text-wedgit.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants/constants.dart';
import '../../../../../core/utilities/app_routers.dart';
import '../../../../home_feature/presentation/veiws/home_veiw.dart';

class SplachVeiwBody extends StatefulWidget {
  const SplachVeiwBody({super.key});

  @override
  State<SplachVeiwBody> createState() => _SplachVeiwBodyState();
}

class _SplachVeiwBodyState extends State<SplachVeiwBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {

    super.initState();
    initSlidingAnimation();
    navigateToHome();

  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 6),(){
      // Get.to(()=>const HomeVeiw(),transition: Transition.fade,duration: kTransitionDuration);
      GoRouter.of(context).push(AppRouter.khomeveiw);
    });
  }

  void initSlidingAnimation() {
     animationController=AnimationController(vsync: this,duration: const Duration(seconds: 4));
    slidingAnimation=Tween<Offset>(begin: const Offset(0,2),end: const Offset(0,0)).animate(animationController);
    animationController.forward();
  }
  @override
  void dispose() {
       animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return
      SlidingText(slidingAnimation: slidingAnimation);
  }
}

