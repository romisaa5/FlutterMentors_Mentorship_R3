import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mini_ui_app/core/styles/app_colors.dart';
import 'package:mini_ui_app/features/home/presentation/manager/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:mini_ui_app/features/home/presentation/screens/home_screen.dart';


class CustomBottomNavBar extends StatelessWidget {
const  CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          NavBarCubit cubit = context.read<NavBarCubit>();
          return Scaffold(
            body: HomeScreen(),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
              
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 24.h),
                child: GNav(
                  onTabChange: (index) {
                    cubit.changeCurrentIndex(index);
                  },
                  tabBorderRadius: 20.r,
                  duration: Duration(milliseconds: 400),
                  gap: 10.w,
                  color: Colors.grey,
                  activeColor: Colors.white,
                  iconSize: 20.sp,
                  tabBackgroundColor: AppColors.primary,
                  padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 9.h),
                  tabs: [
                    GButton(
                      leading: SvgPicture.asset('assets/icons/home.svg'),
                      icon: Icons.home, text: 'Home'),
                    GButton(leading: SvgPicture.asset('assets/icons/library.svg'),
                      icon: Icons.store, text: 'Library',),
                    GButton(leading: SvgPicture.asset('assets/icons/search.svg'),
                     icon: Icons.search, text: 'Search'),
                    GButton(
                      leading: SvgPicture.asset('assets/icons/ball.svg'),
                      icon: Icons.favorite, text: 'Favorite'),
                    GButton(
                      leading: SvgPicture.asset('assets/icons/setting.svg'),
                      icon: Icons.person, text: 'Settings'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}