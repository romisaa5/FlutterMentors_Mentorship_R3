import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_ui_app/core/helper/extentions.dart';
import 'package:mini_ui_app/core/styles/app_colors.dart';
import 'package:mini_ui_app/core/styles/text_app_theme.dart';

class CustomListSections extends StatefulWidget {
  const CustomListSections({super.key});

  @override
  State<CustomListSections> createState() => _CustomListSectionsState();
}

class _CustomListSectionsState extends State<CustomListSections> {
  List<String> sections = [
    'All',
    'Popular',
    'Trending',
    'New Releases',
    'Top Rated',
    'Recommended',
    'Coming Soon',
    'Recently Watched',
    'Favorites',
    'Most Viewed',
  ];

  String selectedSection = 'All';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: sections.length,
        itemBuilder: (context, index) {
          return buildSectionItem(title: sections[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return 4.pw;
        },
      ),
    );
  }

  Widget buildSectionItem({required String title}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSection = title;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: selectedSection == title ? AppColors.primary : AppColors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
          child: Center(
            child: Text(
              title,
              style: TextAppTheme.textStyle14.copyWith(
                color: selectedSection == title
                    ? AppColors.white
                    : AppColors.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
