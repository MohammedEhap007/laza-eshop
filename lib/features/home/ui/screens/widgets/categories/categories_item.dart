import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/themes/app_assets.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../../../core/utils/app_extensions.dart';
import '../../../../data/models/categories_item_model.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key, required this.categoriesItemModel});

  final CategoriesItemModel categoriesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 10),
      decoration: BoxDecoration(
        color: context.isDarkMode()
            ? AppColors.lightDark
            : AppColors.darkerLight,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Container(
            width: 40.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: context.isDarkMode()
                  ? AppColors.lighterDark
                  : AppColors.mainLight,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: categoriesItemModel.imageUrl.isEmpty
                ? Image.asset(
                    AppAssets.iconsCategoriesLoadingIcon,
                    fit: BoxFit.cover,
                  )
                : SvgPicture.network(
                    categoriesItemModel.imageUrl,
                    placeholderBuilder: (context) => Image.asset(
                      AppAssets.iconsCategoriesLoadingIcon,
                      fit: BoxFit.cover,
                    ),
                    fit: BoxFit.scaleDown,
                    allowDrawingOutsideViewBox: true,
                  ),
          ),
          horizontalSpace(10),
          Text(
            categoriesItemModel.name.toUpperCase(),
            style: AppTextStyles.font14Medium,
          ),
        ],
      ),
    );
  }
}
