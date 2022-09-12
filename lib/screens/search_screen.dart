import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';

import '../widgets/double_text_widget.dart';
import '../widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        children: [
          Gap(1.h),
          Text(
            'What are\nyou looking for?',
            style: Styles.headLineStyle1.copyWith(fontSize: 35.sp),
          ),
          Gap(30.h),
          const AppTicketTabs(firstTab: 'Airline tickets', secondTab: 'Hotels'),
          Gap(16.h),
          const AppIconText(
            text: 'Departure',
            icon: Icons.flight_takeoff_rounded,
          ),
          const AppIconText(
            text: 'Arrival',
            icon: Icons.flight_land_rounded,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
            margin: EdgeInsets.only(top: 15.h, bottom: 10.h),
            decoration: BoxDecoration(
                color: const Color(0xd91130ce),
                borderRadius: BorderRadius.all(Radius.circular(14.w))),
            child: Center(
              child: Text(
                'Find Tickets',
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(12.h),
          const AppDoubleTextWidget(
            bigText: 'Upcoming Flights',
            smallText: 'view all',
          ),
          Gap(10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 400.h,
                width: 150.w,
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.w),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 5,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.w),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/sit.jpg',
                          ),
                        ),
                      ),
                    ),
                    Gap(5.h),
                    Text(
                      '20% discount on early booking of flight.Dont miss.',
                      style: Styles.headLineStyle2.copyWith(
                          fontSize: 20.sp, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 190.w,
                        height: 174.h,
                        decoration: BoxDecoration(
                            color: const Color(0xff3ab8b8),
                            borderRadius: BorderRadius.circular(18.h)),
                        padding: EdgeInsets.symmetric(
                            vertical: 15.h, horizontal: 18.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headLineStyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Gap(10.h),
                            Text(
                              'Take the survery about our services and get discount',
                              style: Styles.headLineStyle4.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -40,
                        right: -45,
                        child: Container(
                          padding: EdgeInsets.all(30.h),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18.w, color: const Color(0xff189999)),
                              color: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.h),
                    width: 190.w,
                    height: 200.h,
                    padding:
                        EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.h),
                        color: const Color(0xffec6545)),
                    child: Column(
                      children: [
                        Text(
                          'Take love',
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(15.h),
                        RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                                text: '😍',
                                style: TextStyle(
                                  fontSize: 38,
                                )),
                            TextSpan(
                                text: '🥰',
                                style: TextStyle(
                                  fontSize: 50,
                                )),
                            TextSpan(
                                text: '😘',
                                style: TextStyle(
                                  fontSize: 38,
                                ))
                          ]),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
