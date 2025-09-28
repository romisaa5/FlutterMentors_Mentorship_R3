import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_ui_app/core/helper/extentions.dart';
import 'package:mini_ui_app/core/styles/app_colors.dart';
import 'package:mini_ui_app/core/styles/text_app_theme.dart';
import 'package:mini_ui_app/core/widgets/custom_button.dart';
import 'package:mini_ui_app/features/details/presentation/widgets/custom_tags_details.dart';
import 'package:mini_ui_app/features/details/presentation/widgets/genre_chip.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.royalPurple,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/poster_1.png',
                  width: double.infinity,
                  height: 519.h,
                  fit: BoxFit.fill,
                ),
                76.ph,
                GenreChip(),
                24.ph,
                Divider(
                  color: AppColors.grayDark.withValues(alpha: .48),
                  endIndent: 20.w,
                  indent: 20.w,
                ),
                CustomTagsDetails(),
                Divider(
                  color: AppColors.grayDark.withValues(alpha: .48),
                  endIndent: 20.w,
                  indent: 20.w,
                ),
                22.ph,
                ListTile(
                  leading: Image.asset('assets/images/fire.png'),
                  title: Text(
                    'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
                 style: TextAppTheme.textStyle14.copyWith(
                  color: Color(0xffCBC4C4)
                 ), ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 430.h,
            left: 95.w,
            child: Image.asset(
              'assets/images/badge_image.png',
              width: 193.w,
              height: 146.h,
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        color: AppColors.midnightBlue,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                isIcon: true,
                assetName: 'assets/icons/stopwatch_play.svg',
                text: 'preview',
                color: Color(0xff8D8998),
                width: 163.w,
              ),
              CustomButton(
                isIcon: true,
                assetName: 'assets/icons/solid_eye.svg',
                text: 'Watch Now',
                color: AppColors.primaryLight,
                width: 163.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
