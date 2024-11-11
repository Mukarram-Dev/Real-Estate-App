import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/utils/gaps.dart';
import 'package:real_estate/views/home/widgets/property_list_container.dart';
import 'package:real_estate/views/property_detail/controller/property_controller.dart';

class PropertiesListview extends StatelessWidget {
  const PropertiesListview({super.key});

  @override
  Widget build(BuildContext context) {
    final propertyController = Get.find<PropertyController>();

    return Obx(
      () => ListView.separated(
        separatorBuilder: (context, index) => Gaps.verticalGapOf(30),
        itemBuilder: (context, index) {
          return PropertyListContainer(
              property: propertyController.filteredProperties[index]);
        },
        shrinkWrap: true,
        primary: false,
        itemCount: propertyController.filteredProperties.length,
      ),
    );
  }
}
