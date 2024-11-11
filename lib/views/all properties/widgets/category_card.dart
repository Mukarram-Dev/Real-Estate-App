import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/res/theme/colors.dart';
import 'package:real_estate/res/theme/text_theme_style.dart';
import 'package:real_estate/views/property_detail/controller/property_controller.dart';

class CategoryCard extends StatelessWidget {
  final int index;
  final Function(bool) onPressed;

  const CategoryCard({required this.index, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    final propertyController = Get.find<PropertyController>();

    return GestureDetector(
      onTap: () {
        onPressed(true);
      },
      child: Obx(
        () => Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: propertyController.categoryList[index].isSelected.value
                ? AppColors.primaryColor
                : AppColors.white10,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(propertyController.categoryList[index].title,
                style: AppTextStyles.poppinSmall(
                  color: propertyController.categoryList[index].isSelected.value
                      ? AppColors.white
                      : Colors.grey,
                )),
          ),
        ),
      ),
    );
  }
}
