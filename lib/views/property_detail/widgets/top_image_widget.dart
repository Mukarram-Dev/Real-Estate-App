import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/res/theme/colors.dart';

class TopImageWidget extends StatelessWidget {
  final String imageUrl;
  const TopImageWidget({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imageUrl,
          height: Get.height * 0.45,
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 15,
          top: 40,
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.lightGrey.withOpacity(0.7),
                shape: BoxShape.circle),
            child: Center(
              child: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back_ios_new),
                color: AppColors.secondaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
