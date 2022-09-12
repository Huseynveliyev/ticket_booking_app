import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  const AppDoubleTextWidget(
      {super.key, required this.bigText, required this.smallText});
  final String bigText;
  final String smallText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: Styles.headLineStyle2),
        Text(smallText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
      ],
    );
  }
}
