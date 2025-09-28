import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_ui_app/core/styles/text_app_theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    this.onTap,
    required this.width,
    this.textcolor,
    this.isborder = true,
    this.isIcon = false,
    this.hight,  this.assetName,
  });

  final String text;
  final Color? textcolor;
  final Color color;
  final double width;
  final void Function()? onTap;
  final bool isborder;
  final bool isIcon;
  final double? hight;
final String ?assetName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: hight ?? 45.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(37.r),
          color: color,
        ),
        child: Row(
          spacing: 7.w,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
               if (isIcon == true) ...[
             SvgPicture.asset(assetName??'')
            ],
            Text(
              text,
              style: TextAppTheme.textStyle15,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}