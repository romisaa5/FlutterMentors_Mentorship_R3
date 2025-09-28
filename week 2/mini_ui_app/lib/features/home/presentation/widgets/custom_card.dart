import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_ui_app/core/helper/extentions.dart';
import 'package:mini_ui_app/core/styles/app_colors.dart';
import 'package:mini_ui_app/core/styles/text_app_theme.dart';
import 'package:mini_ui_app/features/home/data/models/anime_model.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.animeModel});
final AnimeModel animeModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(animeModel.imageUrl,height: 245.h,width:180.w,fit: BoxFit.fill,))
            ,7.ph,
            Text(animeModel.title, style: TextAppTheme.textStyle14.copyWith(
              fontWeight: FontWeight.bold
            ),), 
            Text(animeModel.kind, style: TextAppTheme.textStyle12.copyWith(
              color: Color(0xffA9A9A9)
            ),)
            ],
          ),
          Positioned(
            top: 12.h,
            left: 120.w,
            child: Container(
              height: 18.h,
              width:41.w,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20.r)
              ),
              child: Row(
                spacing: 4.w,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Icon(Icons.star, color: AppColors.primary,size: 10.sp,),
                Text(animeModel.rating.toString(), style: TextAppTheme.textStyle12.copyWith(
                  color: Color(0xff1E1E1E)
                ),)
              ],),
            ),
          )
        ],
      ),
    );
  }
}