import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:real_estate/res/theme/colors.dart';
import 'package:real_estate/views/property_detail/controller/property_controller.dart';

class SearchContainerWidget extends StatelessWidget {
  const SearchContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final propertyController = Get.find<PropertyController>();

    return Container(
        height: 50,
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: TextField(
          onChanged: (value) => propertyController.searchQuery.value = value,
          decoration: const InputDecoration(
              hintText: 'Search Your Location',
              alignLabelWithHint: true,
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.primaryColor,
              ),
              suffixIcon: Icon(
                Icons.filter_list_rounded,
                color: AppColors.primaryColor,
              )),
        ));
  }
}
