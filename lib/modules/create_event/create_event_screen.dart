import 'package:evently_app_c13_sun_4_pm/core/extensions/extensions.dart';
import 'package:evently_app_c13_sun_4_pm/core/theme/color_palette.dart';
import 'package:evently_app_c13_sun_4_pm/core/widgets/custom_teb_bar_item.dart';
import 'package:evently_app_c13_sun_4_pm/core/widgets/custom_text_field.dart';
import 'package:evently_app_c13_sun_4_pm/modules/create_event/widgets/create_event_teb_bar_item.dart';
import 'package:flutter/material.dart';

class CreateEventScreen extends StatelessWidget {
  const CreateEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.bgColor,
      appBar: AppBar(
        backgroundColor: ColorPalette.bgColor,
        title: const Text(
          "Create Event",
        ),
      ),
      body: SizedBox(
        width: 1.width,
        height: 1.height,
        child: DefaultTabController(
          length: 6,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                16.spaceVertical,
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "assets/images/category/birthday.png",
                    height: 0.20.height,
                    width: 0.9.width,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 0.15.height,
                  width: 1.width,
                  child: const TabBar(
                    tabAlignment: TabAlignment.start,
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    indicatorColor: Colors.transparent,
                    dividerColor: Colors.transparent,
                    isScrollable: true,
                    tabs: [
                      Tab(
                        child: CreateEventTabBarItem(
                          text: 'All',
                          icon: Icons.all_inbox,
                          isSelected: false,
                        ),
                      ),
                      Tab(
                        child: CreateEventTabBarItem(
                          text: 'All',
                          icon: Icons.all_inbox,
                          isSelected: true,
                        ),
                      ),
                      Tab(
                        child: CreateEventTabBarItem(
                          text: 'All',
                          icon: Icons.all_inbox,
                          isSelected: true,
                        ),
                      ),
                      Tab(
                        child: CreateEventTabBarItem(
                          text: 'All',
                          icon: Icons.all_inbox,
                          isSelected: true,
                        ),
                      ),
                      Tab(
                        child: CreateEventTabBarItem(
                          text: 'All',
                          icon: Icons.all_inbox,
                          isSelected: true,
                        ),
                      ),
                      Tab(
                        child: CreateEventTabBarItem(
                          text: 'All',
                          icon: Icons.all_inbox,
                          isSelected: true,
                        ),
                      ),
                    ],
                  ),
                ),
                const CustomTextField(
                  label: "Event Title",
                  prefixIcon: Icon(
                    Icons.edit,
                  ),
                ),
                16.spaceVertical,
                const CustomTextField(
                  minLines: 5,
                  label: "Event Description",
                ),
                16.spaceVertical,
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_month_rounded,
                    ),
                    8.spaceHorizontal,
                    const Text(
                      "Event Date",
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Choose Date",
                        style: TextStyle(
                          color: ColorPalette.primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
                16.spaceVertical,
                Row(
                  children: [
                    const Icon(
                      Icons.timelapse_rounded,
                    ),
                    8.spaceHorizontal,
                    const Text(
                      "Event Time",
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Choose Date",
                        style: TextStyle(
                          color: ColorPalette.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                16.spaceVertical,
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: ColorPalette.primaryColor,
                    )
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: ColorPalette.primaryColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: const Icon(
                          Icons.location_on,
                          color: ColorPalette.white,
                        ),
                      ),
                      16.spaceHorizontal,
                      const Text(
                        "Event Location",
                        style: TextStyle(
                          color: ColorPalette.primaryColor,
                          fontSize: 18,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: ColorPalette.primaryColor,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
