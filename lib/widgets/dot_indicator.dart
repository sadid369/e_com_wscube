import 'package:e_com_wscube/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Widget buildIndicator(int activeIndex, int count) {
  return AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: count,
    effect: ExpandingDotsEffect(
      dotWidth: 5,
      dotHeight: 5,
      dotColor: ColorConstants.black,
      activeDotColor: ColorConstants.black,
      spacing: 4,
      paintStyle: PaintingStyle.stroke,
      strokeWidth: 1.5,
    ),
  );
}
