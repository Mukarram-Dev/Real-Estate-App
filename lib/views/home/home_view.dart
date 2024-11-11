import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/res/theme/text_theme_style.dart';
import 'package:real_estate/utils/app_constants.dart';
import 'package:real_estate/utils/dimensions.dart';
import 'package:real_estate/utils/gaps.dart';
import 'package:real_estate/views/home/widgets/property_list_container.dart';
import 'package:real_estate/views/home/widgets/recommended_card_widget.dart';
import 'package:real_estate/views/home/widgets/spacebetween_widget.dart';
import 'package:real_estate/views/home/widgets/top_bar_home_widget.dart';
import 'package:real_estate/views/property_detail/controller/property_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final propertyController = Get.find<PropertyController>();

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, Get.height * 0.28),
          child: const TopBarHomWidget()),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Gaps.verticalGapOf(20),
              spaceBetweenRow('Featured Properties', 'more'),
              Gaps.verticalGapOf(20),
              SizedBox(
                height: Get.height * 0.38,
                child: Obx(
                  () => ListView.separated(
                    separatorBuilder: (context, index) =>
                        Gaps.horizontalGapOf(30),
                    primary: false,
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.only(bottom: 10),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: propertyController.filteredList.isEmpty
                        ? 1
                        : propertyController.filteredList.length - 2,
                    itemBuilder: (context, index) => propertyController
                            .filteredList.isEmpty
                        ? Center(
                            child: Align(
                              child: Text(
                                'No Such Property Found',
                                style: AppTextStyles.poppinSmall(),
                              ),
                            ),
                          )
                        : PropertyListContainer(
                            property: propertyController.filteredList[index],
                          ),
                  ),
                ),
              ),
              Gaps.verticalGapOf(20),
              spaceBetweenRow('Recommended For You', 'more'),
              Gaps.verticalGapOf(20),
              ListView.builder(
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(bottom: 20),
                shrinkWrap: true,
                itemCount: AppConstants.listOfProperties.length - 2,
                itemBuilder: (context, index) => RecommendedCardWidget(
                  property: AppConstants.listOfProperties[index],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
