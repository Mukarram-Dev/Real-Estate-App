import 'package:real_estate/model/category.dart';
import 'package:real_estate/model/property_model.dart';
import 'package:real_estate/res/assets/image_assets.dart';

class AppConstants {
  static const String appName = 'Real Estate App';

  static List<PropertyModel> listOfProperties = [
    PropertyModel(
      propertyName: 'Spectra Apartments',
      propertyLocation: 'California, United States',
      propertyPrice: 1800,
      propertyDescription:
          'Nestled amidst rolling hills and verdant countryside, this quaint farmhouse exudes rustic charm and tranquility. Sunlight streams through the large windows, illuminating the open-concept living space with its exposed beams and cozy fireplace. ',
      propertyBathroom: 3,
      propertyBeds: 2,
      propertyFloor: 3,
      propertyArea: 1400,
      propertyImage: ImageAssets.house4,
      propertyType: 'Houses',
    ),
    PropertyModel(
      propertyName: 'Aces Villa',
      propertyLocation: 'New York, United States',
      propertyPrice: 4000,
      propertyDescription:
          'Nestled in a charming neighborhood, this cozy studio apartment boasts a delightful balcony perfect for enjoying morning coffee and evening sunsets. The efficient layout maximizes space, offering a well-equipped kitchenette and a comfortable living area that seamlessly transforms into a sleeping haven at night.',
      propertyBathroom: 6,
      propertyBeds: 5,
      propertyFloor: 5,
      propertyArea: 3600,
      propertyImage: ImageAssets.house5,
      propertyType: 'Lands',
    ),
    PropertyModel(
      propertyName: 'Green Yella',
      propertyLocation: 'Lahore, Pakistan',
      propertyPrice: 2000,
      propertyDescription:
          'Immerse yourself in coastal living in this stunning beachside condo. Step onto your private balcony and breathe in the fresh ocean air, or take a short stroll to the sandy shores just steps away. The spacious interior features two bedrooms and two bathrooms, providing ample space for families or those seeking a work-from-home haven.',
      propertyBathroom: 3,
      propertyBeds: 2,
      propertyFloor: 1,
      propertyArea: 1600,
      propertyImage: ImageAssets.house2,
      propertyType: 'Lands',
    ),
    PropertyModel(
      propertyName: 'Barkat House',
      propertyLocation: 'Karachi, Pakistan',
      propertyPrice: 6000,
      propertyDescription:
          'Experience the grandeur of vintage charm in this beautifully restored Victorian townhouse. Original stained glass windows and gleaming hardwood floors create a sense of character and timeless elegance. The expansive living area provides ample space for entertaining, while the cozy bedrooms offer a quiet escape.',
      propertyBathroom: 5,
      propertyBeds: 4,
      propertyFloor: 2,
      propertyArea: 5600,
      propertyImage: ImageAssets.house8,
      propertyType: 'Houses',
    ),
    PropertyModel(
      propertyName: 'Wiegen Apartment',
      propertyLocation: 'Florida, US',
      propertyPrice: 6000,
      propertyDescription:
          'Experience the grandeur of vintage charm in this beautifully restored Victorian townhouse. Original stained glass windows and gleaming hardwood floors create a sense of character and timeless elegance. The expansive living area provides ample space for entertaining, while the cozy bedrooms offer a quiet escape.',
      propertyBathroom: 5,
      propertyBeds: 4,
      propertyFloor: 2,
      propertyArea: 8600,
      propertyImage: ImageAssets.apartment1,
      propertyType: 'Apartments',
    ),
    PropertyModel(
      propertyName: 'Georgia Apartment',
      propertyLocation: 'New York, US',
      propertyPrice: 6000,
      propertyDescription:
          'Experience the grandeur of vintage charm in this beautifully restored Victorian townhouse. Original stained glass windows and gleaming hardwood floors create a sense of character and timeless elegance. The expansive living area provides ample space for entertaining, while the cozy bedrooms offer a quiet escape.',
      propertyBathroom: 3,
      propertyBeds: 2,
      propertyFloor: 2,
      propertyArea: 9600,
      propertyImage: ImageAssets.apartment2,
      propertyType: 'Apartments',
    ),
  ];

  static List<Category> categories = [
    Category("Houses", ImageAssets.house5, true),
    Category("Apartments", ImageAssets.apartment1, false),
    Category("Lands", ImageAssets.farm1, false),
    Category("Offices", ImageAssets.house8, false),
  ];
}
