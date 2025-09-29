import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_ui_app/core/styles/app_colors.dart';

class CustomUpgradePlanCard extends StatelessWidget {
  const CustomUpgradePlanCard({super.key , required this.isSelected,
    required this.imagePath,
    required this.planText,
    required this.priceText,
    required this.descriptionText,
  });

  final bool isSelected;
  final String imagePath;
  final String planText, priceText, descriptionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.r),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.darkIndigo : AppColors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkIndigo.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(imagePath, width: 108.w, height: 108.h),

              SizedBox(width: 22.w),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    planText,
                    style: TextStyle(
                      color: isSelected ? AppColors.white : AppColors.darkIndigo,
                      fontSize: 16.sp,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '\$$priceText USD ',
                          style: TextStyle(
                            color: isSelected
                                ? AppColors.white
                                : AppColors.darkIndigo,
                            fontSize: 14.sp,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: '/$planText',
                          style: TextStyle(
                            color: AppColors.lavender,
                            fontSize: 14.sp,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Text(
                    descriptionText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.lavender,
                      fontSize: 12.sp,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),

              SizedBox(width: 22.w),
            ],
          ),

          Positioned(
            top: 18.h,
            right: 8.w,
            child: isSelected
                ? Icon(Icons.check_circle, color: AppColors.primary, size: 24.r)
                : Icon(
                    Icons.radio_button_off,
                    color: AppColors.darkIndigo,
                    size: 24.r,
                  ),
          ),
        ],
      ),
    );
  }
}