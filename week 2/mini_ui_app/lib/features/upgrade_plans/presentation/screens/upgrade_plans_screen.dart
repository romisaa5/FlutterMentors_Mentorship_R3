import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_ui_app/core/helper/extentions.dart';
import 'package:mini_ui_app/core/styles/app_colors.dart';
import 'package:mini_ui_app/core/styles/text_app_theme.dart';
import 'package:mini_ui_app/core/widgets/custom_button.dart';
import 'package:mini_ui_app/features/upgrade_plans/presentation/widgets/custom_upgrade_plan_card.dart';

class UpgradePlansScreen extends StatelessWidget {
  const UpgradePlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.acentBlue, AppColors.white],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: 149.h,
              child: SvgPicture.asset('assets/icons/right_star_1.svg'),
            ),
            Positioned(
              left: -120.76.w,
              top: -100.h,
              child: SvgPicture.asset('assets/icons/big_star.svg'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  67.ph,
                  Row(
                    children: [
                      90.pw,
                      Text(
                        'Upgrade Plan',
                        style: TextAppTheme.textStyle22.copyWith(
                          color: AppColors.darkIndigo,
                        ),
                      ),
                      66.pw,
                      CircleAvatar(
                        radius: 14.r,
                        backgroundColor: AppColors.white,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.close, size: 18.sp),
                        ),
                      ),
                    ],
                  ),
                  10.ph,
                  Image.asset(
                    'assets/images/rocket_boy.png',
                    height: 207.h,
                    width: 207.w,
                    fit: BoxFit.fill,
                  ),
                  Text(
                    'Seamless Anime\n Experience, Ad-Free.',
                    style: TextAppTheme.textStyle24,
                    textAlign: TextAlign.center,
                  ),
                  4.ph,
                  Text(
                    'Enjoy unlimited anime streaming without interruptions.',
                    style: TextAppTheme.textStyle14.copyWith(
                      color: Color(0xffAEADB5),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  26.ph,
                  CustomUpgradePlanCard(
                    isSelected: true,
                    imagePath: 'assets/images/file_folders.png',
                    planText: 'Month',
                    priceText: '9.99',
                    descriptionText: 'Include Family Sharing',
                  ),
                  16.ph,
                  CustomUpgradePlanCard(
                    isSelected: false,
                    imagePath: 'assets/images/file_folders.png',
                    planText: 'Year',
                    priceText: '99.99',
                    descriptionText: 'Include Family Sharing',
                  ),
                  37.ph,
                  CustomButton(
                    text: 'Continue',
                    color: AppColors.primary,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
