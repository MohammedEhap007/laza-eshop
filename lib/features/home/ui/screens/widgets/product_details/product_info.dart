import 'package:flutter/material.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../../../core/widgets/custom_text_button.dart';
import '../../../../data/models/products_item_model.dart';
import 'info_chip.dart';
import 'product_description.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
    required this.product,
  });

  final ProductsItemModel product;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(20),
          Text(
            product.name!,
            style: AppTextStyles.font22SemiBold,
          ),
          verticalSpace(10),
          Text(
            '\$${product.price}',
            style: AppTextStyles.font22SemiBold.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          verticalSpace(20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              InfoChip(
                label: 'Stock',
                value: '${product.quantityInStock ?? 0}',
              ),
              InfoChip(
                label: 'Weight',
                value: '${product.weight ?? 0} kg',
              ),
              InfoChip(
                label: 'Color',
                value: product.color ?? 'N/A',
              ),
              if (product.discountPercentage != null &&
                  product.discountPercentage! > 0)
                InfoChip(
                  label: 'Discount',
                  value: '${product.discountPercentage}%',
                ),
            ],
          ),
          verticalSpace(20),
          Text(
            'Product Description',
            style: AppTextStyles.font16SemiBold,
          ),
          verticalSpace(10),
          ProductDescription(product: product),
          verticalSpace(30),
          CustomTextButton(text: 'Add to Cart', onPressed: () {}),
          verticalSpace(30),
        ],
      ),
    );
  }
}
