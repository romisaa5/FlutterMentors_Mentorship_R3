import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_ui_app/core/helper/extentions.dart';
import 'package:mini_ui_app/core/styles/text_app_theme.dart';
import 'package:mini_ui_app/features/home/data/models/charachter_model.dart';

class CustomCharachterItem extends StatelessWidget {
  const CustomCharachterItem({super.key, required this.charachterModel});
  final CharachterModel charachterModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 46.r,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50.r),
            child: Image.asset(
              charachterModel.imageUrl,
              height: 92.h,
              width: 92.w,
              fit: BoxFit.fill,
            ),
          ),
        ),
        10.ph,
        Text(
          charachterModel.charachterName,
          style: TextAppTheme.textStyle16.copyWith(
            color: Color(0xff18153F),
            fontWeight: FontWeight.w600,
          ),
        ),
        6.ph,
        Text(
          charachterModel.anime,
          style: TextAppTheme.textStyle14.copyWith(
            color: Color(0xffACACAC),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
