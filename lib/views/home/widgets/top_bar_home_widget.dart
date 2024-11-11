import 'package:flutter/material.dart';
import 'package:real_estate/res/theme/colors.dart';
import 'package:real_estate/res/theme/text_theme_style.dart';
import 'package:real_estate/utils/gaps.dart';
import 'package:real_estate/views/home/widgets/search_widget.dart';

class TopBarHomWidget extends StatelessWidget {
  const TopBarHomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.verticalGapOf(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(
                        text: 'Welcome Back!\n',
                        style: AppTextStyles.interBody(color: AppColors.white),
                        children: [
                      TextSpan(
                          text: 'John Smith',
                          style: AppTextStyles.poppinsTitle(
                              color: AppColors.white)),
                    ])),
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.white,
                  child: Icon(
                    Icons.notifications,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
            Gaps.verticalGapOf(30),
            const SearchContainerWidget(),
          ],
        ),
      ),
    );
  }
}
