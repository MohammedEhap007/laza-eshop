import 'package:flutter/material.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../data/models/products_item_model.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({super.key, required this.product});

  final ProductsItemModel product;

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.product.description ?? 'No description available.',
          style: AppTextStyles.font14Regular.copyWith(
            color: Theme.of(context).textTheme.bodySmall?.color,
          ),
          maxLines: _isExpanded ? null : 3,
          overflow: _isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
        ),
        verticalSpace(2),
        Visibility(
          visible:
              (widget.product.description != null &&
              widget.product.description!.length > 150),
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Text(
              _isExpanded ? 'Read Less' : 'Read More',
              style: AppTextStyles.font14Medium.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
