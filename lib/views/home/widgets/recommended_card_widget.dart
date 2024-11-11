import 'package:flutter/material.dart';
import 'package:real_estate/model/property_model.dart';
import 'package:real_estate/res/theme/colors.dart';
import 'package:real_estate/res/theme/text_theme_style.dart';
import 'package:real_estate/utils/gaps.dart';

class RecommendedCardWidget extends StatelessWidget {
  final PropertyModel property;

  const RecommendedCardWidget({Key? key, required this.property})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.5),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 3),
                  blurRadius: 10,
                  spreadRadius: 1,
                  color: Colors.grey.withOpacity(.15)),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  height: 100,
                  width: 120,
                  property.propertyImage,
                  fit: BoxFit.cover,
                ),
              ),
              Gaps.horizontalGapOf(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    property.propertyName,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text.rich(
                    TextSpan(
                        text: '\$${property.propertyPrice}',
                        style: AppTextStyles.poppinsNormal(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                              text: '/Month',
                              style: AppTextStyles.interSmall(
                                color: AppColors.grey1,
                              ))
                        ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: AppColors.primaryColor,
                        size: 20,
                      ),
                      Text(
                        property.propertyLocation,
                        style: AppTextStyles.interBody(
                            color: AppColors.grey1, fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
