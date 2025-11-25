import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/helpers/spacing.dart';
import 'categories_bar.dart';
import 'categories_list_view.dart';

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
