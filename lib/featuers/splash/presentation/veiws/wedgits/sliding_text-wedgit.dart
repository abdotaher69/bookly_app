import 'package:flutter/cupertino.dart';

import '../../../../../core/utilities/AssetsData.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: slidingAnimation,
        builder: (context,_) {
          return SlideTransition(
              position: slidingAnimation,
              child: Center(child: Image.asset(AssetsData.logo)));
        }
    );
  }
}
