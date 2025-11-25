import 'package:flutter/material.dart';
import '../../../../../../core/helpers/spacing.dart';
import 'custom_search_bar.dart';
import 'custom_search_button.dart';

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
