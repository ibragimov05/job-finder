import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerMaker extends StatelessWidget {
  String text;
  int count;

  ContainerMaker({
    super.key,
    required this.text,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: count == 2
          ? const EdgeInsets.only(left: 20.5, right: 20.5, top: 8, bottom: 8)
          : const EdgeInsets.all(8),
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFf5f4f6),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: const Color(0xFF524b6b),
          fontSize: 14.5.sp,
        ),
      ),
    );
  }
}
