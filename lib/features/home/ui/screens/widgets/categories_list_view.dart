import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_eshop/features/home/data/models/categories_response.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/categories_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key, required this.categoriesResponse});

  final CategoriesResponse categoriesResponse;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categoriesResponse.categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 10.0.w),
            child: CategoriesItem(
              categoriesItemModel: categoriesResponse.categories[index],
            ),
          );
        },
      ),
    );
  }
}
