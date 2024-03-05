import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate/res/assets/image_assets.dart';
import 'package:real_estate/res/theme/colors.dart';
import 'package:real_estate/res/theme/text_theme_style.dart';
import 'package:real_estate/utils/gaps.dart';

class ListTileWidget extends StatelessWidget {
  final String propertyName;
  final String propertyLocation;

  const ListTileWidget(
      {Key? key, required this.propertyName, required this.propertyLocation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 5),
      title: Text(
        propertyName,
        style: AppTextStyles.interHeading(
            fontSize: 20,
            color: AppColors.secondaryColor,
            fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          const Icon(
            Icons.location_on,
            size: 20,
            color: AppColors.textColor,
          ),
          Gaps.horizontalGapOf(5),
          Text(
            propertyLocation,
            style: AppTextStyles.interSubtitle(
                color: AppColors.textColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      trailing: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: SvgPicture.asset(
            ImageAssets.saveIcon,
            colorFilter:
                const ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}
