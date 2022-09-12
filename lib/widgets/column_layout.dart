import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alligment;
  const AppColumnLayout(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.alligment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alligment,
      children: [
        Text(firstText, style: Styles.headLineStyle3),
        Gap(5.h),
        Text(secondText, style: Styles.headLineStyle4),
      ],
    );
  }
}
