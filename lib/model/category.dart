import 'package:get/get_rx/src/rx_types/rx_types.dart';

class Category {
  String title;
  String imageUrl;
  RxBool isSelected;

  Category(
    this.title,
    this.imageUrl,
    bool isSelected,
  ) : isSelected = RxBool(isSelected); // Initialize as reactive
}
