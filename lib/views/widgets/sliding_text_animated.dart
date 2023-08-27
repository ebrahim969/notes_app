import 'package:flutter/material.dart';
import 'text_widget.dart';
import 'package:note_app/constants/constant.dart';
class SlidingTextAnimated extends StatelessWidget {
  const SlidingTextAnimated({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Center(
            child: textWidget(
                txt: "Write Note, Try Change",
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontsize: 12),
          ),
        );
      }
    );
  }
}