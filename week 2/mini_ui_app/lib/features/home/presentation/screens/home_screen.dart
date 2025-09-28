import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_ui_app/core/helper/extentions.dart';
import 'package:mini_ui_app/core/styles/text_app_theme.dart';
import 'package:mini_ui_app/features/home/data/models/anime_model.dart';
import 'package:mini_ui_app/features/home/data/models/charachter_model.dart';
import 'package:mini_ui_app/features/home/presentation/widgets/custom_card.dart';
import 'package:mini_ui_app/features/home/presentation/widgets/custom_charachter_item.dart';
import 'package:mini_ui_app/features/home/presentation/widgets/custom_list_sections.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              24.ph,
              Text(
                'Where Anime Comes Alive',
                style: TextAppTheme.textStyle24.copyWith(
                  color: Color(0xff18153F),
                ),
              ),
              24.ph,
              CustomListSections(),
              24.ph,
              SizedBox(
                height: 300.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: AnimeModel.animes.length,
                  itemBuilder: (context, index) {
                    return CustomCard(animeModel: AnimeModel.animes[index]);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return 14.pw;
                  },
                ),
              ),
              24.ph,
              Text(
                'Top Characters',
                style: TextAppTheme.textStyle24.copyWith(color: Colors.black),
              ),
              24.ph,
                        SizedBox(
                height: 300.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: CharachterModel.charachters.length,
                  itemBuilder: (context, index) {
                    return CustomCharachterItem(charachterModel: CharachterModel.charachters[index]);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return 20.pw;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
