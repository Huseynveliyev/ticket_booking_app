import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_info.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          children: [
            Gap(10.h),
            Text(
              'Tickets',
              style: Styles.headLineStyle1,
            ),
            Gap(20.h),
            const AppTicketTabs(firstTab: 'Upcomings', secondTab: 'Previus'),
            Container(
              padding: EdgeInsets.only(left: 15.w, top: 20.h),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 9.w),
              margin: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(6.w))),
              child: Column(
                children: [
                  Gap(20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: 'Flutter DB',
                        secondText: 'Passenger',
                        alligment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        firstText: '5221 123366',
                        secondText: 'Passport',
                        alligment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  Gap(12.h),
                  Gap(10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: '23366 45564',
                        secondText: 'Number of E-ticket',
                        alligment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        firstText: 'B2SG397',
                        secondText: 'Booking code',
                        alligment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  Gap(12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Gap(12.h),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/visa.png',
                                scale: 11,
                              ),
                              Text(
                                ' **** 2462 ',
                                style: Styles.headLineStyle3,
                              ),
                            ],
                          ),
                          Gap(5.h),
                          Text(
                            'Paynment method',
                            style: Styles.headLineStyle4,
                          ),
                          Gap(12.h),
                        ],
                      ),
                      Column(
                        children: const [
                          AppColumnLayout(
                            firstText: '\$249.99',
                            secondText: 'price',
                            alligment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Barcode section

            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w),
              padding: EdgeInsets.symmetric(vertical: 20.h),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.h),
                      bottomRight: Radius.circular(30.h))),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.h),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://pub.dev/packages/barcode_widget',
                    drawText: false,
                    color: Styles.TextColor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15.w, top: 20.h),
              child: TicketView(
                ticket: ticketList[0],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
