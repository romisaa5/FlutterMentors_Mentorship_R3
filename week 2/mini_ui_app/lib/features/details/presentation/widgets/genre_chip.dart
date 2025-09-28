import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_ui_app/core/styles/app_colors.dart';
import 'package:mini_ui_app/core/styles/text_app_theme.dart';

class GenreChip extends StatelessWidget {
  const GenreChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildGenreChip('Dark Fantasy'),
        buildGenreChip('Action'),
        buildGenreChip('Adventure'),
      ],
    );
  }

  Widget buildGenreChip(String text) {
    return Container(
      height: 35.h,
      width: 97.w,
      decoration: BoxDecoration(
        color: AppColors.graySoft.withValues(alpha: .24),
        borderRadius: BorderRadius.circular(17.r),
      ),
      child: Center(child: Text(text,style: TextAppTheme.textStyle11,)),
    );
  }
}
