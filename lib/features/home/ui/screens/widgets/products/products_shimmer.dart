import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../data/models/products_item_model.dart';
import '../../../../data/models/products_response.dart';
import 'products_grid_view.dart';

class ProductsShimmer extends StatelessWidget {
  const ProductsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer.sliver(
      child: ProductsGridView(
        productsResponse: ProductsResponse(
          products: List.generate(
            8,
            (index) => ProductsItemModel(
              id: 'skeleton-$index',
              name: 'Loading...',
              price: 0.0,
              description: 'Loading description...',
              coverPicture: '',
              code: '',
              arabicName: '',
              arabicDescription: '',
              productPictures: [],
              quantityInStock: null,
              weight: null,
              color: '',
              rating: null,
              reviewsCount: null,
              discountPercentage: null,
              sellerId: '',
              categories: [],
            ),
          ),
          pageNumber: 0,
          pageSize: 0,
          totalCount: 0,
          hasNext: null,
          hasPrevious: null,
        ),
      ),
    );
  }
}
