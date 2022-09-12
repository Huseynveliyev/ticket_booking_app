import 'dart:ui';

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
        children: [
          const Gap(17),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 90.w,
                height: 98.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(33.h),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/img_1.png'))),
              ),
              Gap(10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headLineStyle1,
                  ),
                  Text(
                    'New York',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(8.w),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.h),
                      color: const Color(0xfffef4f3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff526799)),
                          child: const Icon(
                              FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white,
                              size: 15),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.0),
                          child: Text(
                            'Premium Status',
                            style: TextStyle(
                                color: Color(
                                  0xff526799,
                                ),
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Text(
                    'Edit',
                    style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
