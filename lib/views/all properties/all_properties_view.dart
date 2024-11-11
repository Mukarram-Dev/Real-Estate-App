import 'package:flutter/material.dart';
import 'package:real_estate/utils/gaps.dart';
import 'package:real_estate/views/all%20properties/widgets/horizontal_category_list.dart';
import 'package:real_estate/views/all%20properties/widgets/properties_listview.dart';
import 'package:real_estate/views/all%20properties/widgets/topbar_widget.dart';

class AllPropertiesView extends StatelessWidget {
  const AllPropertiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const TopbarWidget(),
                Gaps.verticalGapOf(20),
                const HorizontalCategoriesView(),
                Gaps.verticalGapOf(20),
                const PropertiesListview(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
