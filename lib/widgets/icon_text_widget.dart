import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppIconText extends StatelessWidget {
  const AppIconText({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
      margin: EdgeInsets.only(top: 15.h, bottom: 10.h),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16.w))),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xffbfc2df),
          ),
          SizedBox(width: 15.w),
          Text(text),
        ],
      ),
    );
  }
}
