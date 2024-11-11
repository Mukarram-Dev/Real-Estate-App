import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/res/theme/text_theme_style.dart';

class TopbarWidget extends StatelessWidget {
  const TopbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            style: const ButtonStyle(
              alignment: Alignment.centerLeft,
              padding: WidgetStatePropertyAll(EdgeInsets.zero),
            ),
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
            )),
        Text(
          'Properties',
          style: AppTextStyles.poppinsTitle(),
        ),
        const Icon(Icons.filter_alt),
      ],
    );
  }
}
