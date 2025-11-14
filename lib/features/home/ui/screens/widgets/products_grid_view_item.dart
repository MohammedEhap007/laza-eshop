import 'package:flutter/material.dart';
import 'package:laza_eshop/core/helpers/spacing.dart';
import 'package:laza_eshop/core/themes/app_text_styles.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/product_item.dart';

class ProductsGridViewItem extends StatelessWidget {
  const ProductsGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          child: ProductItem(),
        ),
        verticalSpace(5),
        Text(
          'Nike Sportswear Club Fleece Pullover Hoodie',
          style: AppTextStyles.font11Medium,
          textAlign: TextAlign.start,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        verticalSpace(5),
        Text(
          '\$99',
          style: AppTextStyles.font12SemiBold,
        ),
      ],
    );
  }
}
