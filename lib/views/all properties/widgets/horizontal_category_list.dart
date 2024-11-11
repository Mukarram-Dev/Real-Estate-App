import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/utils/gaps.dart';
import 'package:real_estate/views/all%20properties/widgets/category_card.dart';
import 'package:real_estate/views/property_detail/controller/property_controller.dart';

class HorizontalCategoriesView extends StatelessWidget {
  const HorizontalCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    final propertyController = Get.find<PropertyController>();

    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Obx(
        () => ListView.separated(
          separatorBuilder: (context, index) => Gaps.horizontalGapOf(10),
          scrollDirection: Axis.horizontal,
          itemCount: propertyController.categoryList.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              index: index,
              onPressed: (b) {
                for (var category in propertyController.categoryList) {
                  category.isSelected = false;
                }
                propertyController.updateCatergory(
                    propertyController.categoryList[index].title, true, index);
              },
            );
          },
        ),
      ),
    );
  }
}
