import 'package:flutter/material.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../data/models/products_item_model.dart';
import 'product_item.dart';

class ProductsGridViewItem extends StatelessWidget {
  const ProductsGridViewItem({super.key, required this.productsItemModel});

  final ProductsItemModel productsItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ProductItem(productsItemModel: productsItemModel),
        ),
        verticalSpace(5),
        Text(
          productsItemModel.name!,
          style: AppTextStyles.font11Medium,
          textAlign: TextAlign.start,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        verticalSpace(5),
        Text(
          '\$${productsItemModel.price}',
          style: AppTextStyles.font12SemiBold,
        ),
      ],
    );
  }
}
