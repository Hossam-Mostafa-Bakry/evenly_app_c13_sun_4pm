import 'package:evently_app_c13_sun_4_pm/core/extensions/extensions.dart';
import 'package:evently_app_c13_sun_4_pm/core/theme/color_palette.dart';
import 'package:evently_app_c13_sun_4_pm/modules/layout/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/widgets/custom_elveted_button.dart';
import 'widgets/btn_nav_bar_item.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: ColorPalette.primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          width: 1.width,
          height: 0.27.height,
          child: SafeArea(
            child: DefaultTabController(
              length: 6,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Column(
                        children: [
                          Text(
                            "Welcome Back",
                            style: TextStyle(
                              fontSize: 16,
                              color: ColorPalette.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "John Doe",
                            style: TextStyle(
                              fontSize: 24,
                              color: ColorPalette.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        "assets/icons/theme_icn.svg",
                      ),
                      16.spaceHorizontal,
                      CustomElevatedButton(
                        text: 'En',
                        borderRadius: 8,
                        textColor: ColorPalette.primaryColor,
                        bgColor: ColorPalette.white,
                        onTap: () {},
                      ),
                    ],
                  ),
                  16.spaceVertical,
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: ColorPalette.white,
                      ),
                      8.spaceHorizontal,
                      const Text(
                        "Cairo , Egypt",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: ColorPalette.white,
                        ),
                      )
                    ],
                  ),
                  16.spaceVertical,
                  const Expanded(
                    child: TabBar(
                      tabAlignment: TabAlignment.start,
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      indicatorColor: Colors.transparent,
                      dividerColor: Colors.transparent,
                      isScrollable: true,
                      tabs: [
                        Tab(
                          child: CustomTabBarItem(
                            text: 'All',
                            icon: Icons.all_inbox,
                            isSelected: true,
                          ),
                        ),
                        Tab(
                          child: CustomTabBarItem(
                            text: 'All',
                            icon: Icons.all_inbox,
                            isSelected: false,
                          ),
                        ),
                        Tab(
                          child: CustomTabBarItem(
                            text: 'All',
                            icon: Icons.all_inbox,
                            isSelected: false,
                          ),
                        ),
                        Tab(
                          child: CustomTabBarItem(
                            text: 'All',
                            icon: Icons.all_inbox,
                            isSelected: false,
                          ),
                        ),
                        Tab(
                          child: CustomTabBarItem(
                            text: 'All',
                            icon: Icons.all_inbox,
                            isSelected: false,
                          ),
                        ),
                        Tab(
                          child: CustomTabBarItem(
                            text: 'All',
                            icon: Icons.all_inbox,
                            isSelected: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        8.spaceVertical,
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.zero,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const CategoryCard();
            },
            separatorBuilder: (BuildContext context, int index) {
              return 16.spaceVertical;
            },
          ),
        ),
      ],
    );
  }
}
