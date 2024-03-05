import 'package:flutter/material.dart';

import 'package:real_estate/utils/app_constants.dart';
import 'package:real_estate/utils/dimensions.dart';
import 'package:real_estate/utils/gaps.dart';
import 'package:real_estate/views/home/widgets/category_list.dart';
import 'package:real_estate/views/home/widgets/property_list_container.dart';
import 'package:real_estate/views/home/widgets/spacebetween_widget.dart';
import 'package:real_estate/views/home/widgets/top_bar_home_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
        child: ListView(
          children: [
            const TopBarHomWidget(),
            Gaps.verticalGapOf(20),
            spaceBetweenRow('Featured Properties', 'more'),
            Gaps.verticalGapOf(20),
            SizedBox(
              height: 320,
              child: ListView.builder(
                primary: false,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(bottom: 10),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: AppConstants.listOfProperties.length,
                itemBuilder: (context, index) => PropertyListContainer(
                  index: index,
                ),
              ),
            ),
            Gaps.verticalGapOf(20),
            spaceBetweenRow('Search by type', 'more'),
            Gaps.verticalGapOf(20),
            SizedBox(
              height: 130,
              child: ListView.builder(
                primary: false,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(bottom: 10),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: AppConstants.categories.length,
                itemBuilder: (context, index) => CategoryListContainer(
                  index: index,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
