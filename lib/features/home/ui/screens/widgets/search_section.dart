import 'package:flutter/material.dart';
import 'package:laza_eshop/core/helpers/spacing.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/custom_search_bar.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/custom_search_button.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      spacing: 10,
      children: [
        CustomSearchBar(),
        CustomSearchButton(),
      ],
    );
  }
}
