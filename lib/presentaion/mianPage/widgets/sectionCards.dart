import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionCards extends StatelessWidget {
  final String imagepath;
  final String maintext;
  final String subText;
  final Function()? onTtap;
  final String tagImage;

  const SectionCards({
    super.key,
    required this.imagepath,
    required this.maintext,
    required this.subText,
    required this.onTtap,
    required this.tagImage,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTtap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 3.h),
        width: 0.9.sw,
        height: 0.13.sh,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color
              offset: Offset(0, 4.h), // Shadow directly below the container
              blurRadius: 2.r, // Softness of the shadow
              spreadRadius: 1.r, // Size of the shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 10.h,
              right: 6.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Hero(
                  tag: "tag-$tagImage",
                  child: Image(
                    width: 0.19.sw,
                    height: 0.1.sh,
                    image: AssetImage(imagepath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10.h,
              right: 85.w,
              child: SizedBox(
                width: 0.7.sw,
                child: Text(
                  textAlign: TextAlign.right,
                  maintext,
                  style: GoogleFonts.cairo(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 11.h,
              right: 90.w,
              top: 27.h,
              child: SizedBox(
                width: 0.7.sw,
                height: 57.h,
                child: Text(
                  textAlign: TextAlign.right,
                  subText,
                  style: GoogleFonts.cairo(
                    fontSize: 10.sp,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
