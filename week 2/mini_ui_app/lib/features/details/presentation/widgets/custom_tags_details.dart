import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_ui_app/core/styles/text_app_theme.dart';

class CustomTagsDetails extends StatelessWidget {
  const CustomTagsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildTagsDetails(
          imageUrl: 'assets/icons/solid_eye.svg',
          rate: '2.3M',
          text: 'views',
        ),
        buildTagsDetails(
          imageUrl: 'assets/icons/hands_clapping.svg',
          rate: '2K',
          text: 'clap',
        ),
        buildTagsDetails(
          imageUrl: 'assets/icons/video_cd.svg',
          rate: '4',
          text: 'Seasons',
        ),
      ],
    );
  }

  Widget buildTagsDetails({
    required String imageUrl,
    required String rate,
    required String text,
  }) {
    return Row(
      spacing: 3.w,
      children: [
        SvgPicture.asset(imageUrl),
        Text(rate, style: TextAppTheme.textStyle13),
        Text(text, style: TextAppTheme.textStyle13),
      ],
    );
  }
}
