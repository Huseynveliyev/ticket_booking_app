import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs(
      {super.key, required this.firstTab, required this.secondTab});
  final String firstTab;
  final String secondTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.w),
          color: const Color(0xfff4f6fd)),
      child: Row(
        children: [
          Expanded(child: Center(child: Text(firstTab))),
          Expanded(
              child: Container(
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10.w),
                  ),
                  child: Center(
                    child: Text(
                      secondTab,
                    ),
                  ))),
        ],
      ),
    );
  }
}
