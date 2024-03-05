import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:real_estate/res/assets/image_assets.dart';
import 'package:real_estate/res/routes/routes_name.dart';
import 'package:real_estate/res/theme/colors.dart';
import 'package:real_estate/res/theme/text_theme_style.dart';
import 'package:real_estate/utils/app_constants.dart';
import 'package:real_estate/utils/gaps.dart';

class PropertyListContainer extends StatelessWidget {
  final int index;
  const PropertyListContainer({Key? key, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final property = AppConstants.listOfProperties[index];

    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () =>
            Get.toNamed(RouteName.propertyRoute, arguments: [property]),
        child: Container(
          width: 280,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 1,
                spreadRadius: 0.3,
                color: AppColors.hintText,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      property.propertyImage,
                      fit: BoxFit.cover,
                      height: 220, // Fixed height for image
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: AppColors.secondaryColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Rs. ',
                            style: AppTextStyles.poppinsNormal(
                                color: AppColors.white),
                          ),
                          Text(
                            '${property.propertyPrice}/month ',
                            style: AppTextStyles.poppinsNormal(
                                color: AppColors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          property.propertyName,
                          style: AppTextStyles.interHeading(
                              fontSize: 20,
                              color: AppColors.secondaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SvgPicture.asset(
                          ImageAssets.saveIcon,
                          height: 25,
                          colorFilter: const ColorFilter.mode(
                              AppColors.primaryColor, BlendMode.srcIn),
                        )
                      ],
                    ),
                    Gaps.verticalGapOf(3),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: AppColors.textColor,
                        ),
                        Gaps.horizontalGapOf(5),
                        Text(
                          property.propertyLocation,
                          style: AppTextStyles.interBody(
                              color: AppColors.textColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
