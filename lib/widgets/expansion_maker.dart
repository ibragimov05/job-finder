import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpansionCreator extends StatelessWidget {
  final String photoPath;
  final String text;
  final String startText;
  final String centerText;
  final String endText;

  ExpansionCreator({
    super.key,
    required this.photoPath,
    required this.text,
    required this.startText,
    required this.centerText,
    required this.endText,
  });

  @override
  Widget build(BuildContext context) {
    /// container
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(20.r),
      ),

      /// expansion tile
      child: ExpansionTile(
        collapsedBackgroundColor: const Color(0xFFFFFFFF),
        backgroundColor: const Color(0xFFFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0.r),
        ),
        trailing: Container(
          decoration:
              const BoxDecoration(color: Color(0xFFd9d0fa), shape: BoxShape.circle),
          child: const Icon(
            Icons.add,
            color: Color(0xFF3f13e4),
          ),
        ),

        /// expansion tile icon and texts
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 30.w,
              height: 30.h,
              padding: const EdgeInsets.all(1),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                photoPath,
              ),
            ),
            SizedBox(
              width: 14.w,
            ),
            Text(
              text,
              style: GoogleFonts.akatab(
                  fontWeight: FontWeight.w700, fontSize: 17.sp),
            ),
          ],
        ),

        /// text in expansion tile
        children: [
          Divider(
            color: Colors.grey.withOpacity(0.4),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Container(
              width: double.infinity,
              // color: Colors.yellow,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        startText,
                        style: TextStyle(
                            color: const Color(0xFF150b3d),
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp),
                      ),
                      Container(
                        height: 25.h,
                        width: 25.w,
                        child: Image.asset(
                            'assets/icons/expansion_icons/edit.png'),
                      ),
                    ],
                  ),
                  Text(
                    centerText,
                    style: const TextStyle(
                      color: Color(0xFF7d7890),
                    ),
                  ),
                  Text(
                    endText,
                    style: const TextStyle(color: Color(0xFF7d7890)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
