import 'package:get/get.dart';
import 'package:real_estate/model/property_model.dart';
import 'package:real_estate/utils/utils.dart';

class PropertyController extends GetxController {
  final savePropertyList = <PropertyModel>[].obs;

  void saveProperty(PropertyModel property) {
    if (!savePropertyList.contains(property)) {
      // Check for duplicates
      savePropertyList.add(property);
      Utils.toastMessage('Item Saved');
      update(); // Notify UI of changes
    } else {
      savePropertyList.remove(property);
      Utils.toastMessage('Item unsaved');
      update();
    }
  }
}
