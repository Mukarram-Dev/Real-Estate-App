import 'package:real_estate/model/property_model.dart';
import 'package:real_estate/res/assets/image_assets.dart';

class AppConstants {
  static const String appName = 'Real Estate App';

  static List<PropertyModel> listOfProperties = [
    PropertyModel(
      propertyName: 'Spectra Apartments',
      propertyLocation: 'California, United States',
      propertyPrice: 18000,
      propertyDescription: '',
      propertyBathroom: 3,
      propertyBeds: 2,
      propertyFloor: 3,
      propertyArea: 1400,
      propertyImage: ImageAssets.house4,
    ),
    PropertyModel(
      propertyName: 'Aces Villa',
      propertyLocation: 'New York, United States',
      propertyPrice: 40000,
      propertyDescription: '',
      propertyBathroom: 6,
      propertyBeds: 5,
      propertyFloor: 5,
      propertyArea: 3600,
      propertyImage: ImageAssets.house5,
    ),
  ];
}
