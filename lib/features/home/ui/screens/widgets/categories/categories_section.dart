import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_eshop/core/di/dependency_injection.dart';
import 'package:laza_eshop/core/helpers/spacing.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/categories/categories_bar.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/categories/categories_list_view.dart';

import '../../../cubits/categories_cubit/categories_cubit.dart';
import '../../../cubits/categories_cubit/categories_state.dart';
import 'categories_bloc_builder.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoriesBar(),
        verticalSpace(15),
        BlocProvider(
          create: (context) => getIt<CategoriesCubit>()..getCategories(),
          child: const CategoriesBlocBuilder(),
        ),
      ],
    );
  }
}
